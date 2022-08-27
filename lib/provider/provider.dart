import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/element_calculator.dart';
import 'package:pokefinder/model/effective_type_result.dart';
import 'package:pokefinder/model/poke_type.dart';
import 'package:pokefinder/model/poke_type_selector.dart';
import 'package:pokefinder/model/selected_poke_type_input.dart';
import 'package:pokefinder/provider/selected_type_state_notifier.dart';

final _allPokeType = Provider((ref) => PokeType.allPokeTypes);

final selectedTypeProvider =
    StateNotifierProvider<SelectedTypeStateNotifier, SelectedPokeTypeInput?>(
        (ref) => SelectedTypeStateNotifier());

final typeSelectorProvider = StateProvider<List<PokeTypeSelector>>((ref) {
  final all = ref.read(_allPokeType);
  final selected = ref.watch(selectedTypeProvider);
  return all
      .map((e) => PokeTypeSelector(
            type: e,
            isSelected: e == selected?.primary || e == selected?.secondary,
          ))
      .toList();
});

final effectiveTypeResultProvider = StateProvider<EffectiveTypeResult>((ref) {
  final selected = ref.watch(selectedTypeProvider);
  if (selected != null) {
    return ElementCalculator.findTheMostEffectiveAttackByEnemyType(
      primary: selected.primary,
      secondary: selected.secondary,
    );
  } else {
    return EffectiveTypeResult();
  }
});
