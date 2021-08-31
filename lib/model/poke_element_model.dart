import 'package:pokefinder/model/attack_effect_model.dart';

class PokeElement {
  final String name;
  final String colorCode;
  final ElementAttackModel atk;

  const PokeElement.init(
    this.name,
    this.colorCode,
    this.atk,
  );
}
