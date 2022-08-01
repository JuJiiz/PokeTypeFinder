import 'package:pokefinder/model/poke_type.dart';

class PokeTypeSelector {
  final PokeType type;
  final bool isSelected;

  PokeTypeSelector({
    required this.type,
    this.isSelected = false,
  });
}
