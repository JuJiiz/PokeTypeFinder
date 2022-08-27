import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/model/poke_type.dart';
import 'package:pokefinder/model/selected_poke_type_input.dart';

class SelectedTypeStateNotifier extends StateNotifier<SelectedPokeTypeInput?> {
  SelectedTypeStateNotifier() : super(null);

  update(PokeType selected) {
    final current = state;

    if (current == null) {
      state = SelectedPokeTypeInput(primary: selected);
    } else {
      final secondary = current.secondary;
      if (secondary == null) {
        if (selected == current.primary) {
          state = null;
        } else {
          state = current.copyWith(secondary: selected);
        }
      } else {
        if (selected == secondary) {
          state = current.copyWith(secondary: null);
        } else {
          state = current.copyWith(primary: secondary, secondary: selected);
        }
      }
    }
  }
}
