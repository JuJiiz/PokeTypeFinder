import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/model/poke_type.dart';
import 'package:pokefinder/provider/provider.dart';

class SelectedTypeStateNotifier extends StateNotifier<List<PokeType>> {
  final Ref _ref;

  SelectedTypeStateNotifier(this._ref) : super([]);

  update(PokeType selected) {
    final current = List.of(state);

    final isContainThisType =
        current.any((element) => element.id == selected.id);

    if (isContainThisType) {
      current.removeWhere((element) => element.id == selected.id);
    } else {
      if (state.length >= 2) {
        final last = current.last;
        current.clear();
        current.add(last);
      }
      current.add(selected);
    }

    _ref.read(selectedTypeProvider.notifier).state = current;
  }
}
