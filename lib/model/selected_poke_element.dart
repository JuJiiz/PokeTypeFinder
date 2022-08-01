import 'package:pokefinder/model/poke_type.dart';

class SelectedPokeElement {
  final PokeType primary;
  final PokeType? secondary;

  SelectedPokeElement({required this.primary, this.secondary});
}
