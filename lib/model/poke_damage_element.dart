import 'package:pokefinder/model/poke_type.dart';

class PokeDamageElement {
  final List<PokeType> megaEffective;
  final List<PokeType> superEffective;
  final List<PokeType> normalEffective;
  final List<PokeType> notVeryEffective;
  final List<PokeType> slightlyEffective;
  final List<PokeType> noEffective;

  const PokeDamageElement({
    required this.megaEffective,
    required this.superEffective,
    required this.normalEffective,
    required this.notVeryEffective,
    required this.slightlyEffective,
    required this.noEffective,
  });

  static PokeDamageElement get getDefault => const PokeDamageElement(
        megaEffective: [],
        superEffective: [],
        normalEffective: [],
        notVeryEffective: [],
        slightlyEffective: [],
        noEffective: [],
      );
}
