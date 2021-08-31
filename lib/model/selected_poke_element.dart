import 'package:pokefinder/model/poke_element_model.dart';

class SelectedPokeElement {
  final PokeElement primary;
  final PokeElement? secondary;

  SelectedPokeElement({required this.primary, this.secondary});
}
