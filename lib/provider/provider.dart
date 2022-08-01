import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/element_calculator.dart';
import 'package:pokefinder/model/poke_damage_element.dart';
import 'package:pokefinder/model/poke_type.dart';
import 'package:pokefinder/model/poke_type_selector.dart';
import 'package:pokefinder/provider/selected_type_state_notifier.dart';

final _allPokeType = Provider((ref) => ElementCalculator.allElements);

final selectedTypeProvider =
    StateNotifierProvider<SelectedTypeStateNotifier, List<PokeType>>(
        (ref) => SelectedTypeStateNotifier(ref));

final typeSelectorProvider = StateProvider<List<PokeTypeSelector>>((ref) {
  final all = ref.read(_allPokeType);
  final selected = ref.watch(selectedTypeProvider);
  return all
      .map((e) => PokeTypeSelector(type: e, isSelected: selected.contains(e)))
      .toList();
});

final poketypeDamageResultProvider = StateProvider<PokeDamageElement>((ref) {
  final selected = ref.watch(selectedTypeProvider);
  if (selected.isNotEmpty) {
    PokeType? secondary;
    if (selected.length > 1) secondary = selected[1];
    return ElementCalculator.findTheMostEffectiveAttackByEnemyType(
      primary: selected.first,
      secondary: secondary,
    );
  } else {
    return PokeDamageElement.getDefault;
  }
});
