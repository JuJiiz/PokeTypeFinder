import 'package:pokefinder/model/poke_element_model.dart';

class PokeDamageElement {
  final List<PokeElement> megaEffective;
  final List<PokeElement> superEffective;
  final List<PokeElement> normalEffective;
  final List<PokeElement> notVeryEffective;
  final List<PokeElement> slightlyEffective;
  final List<PokeElement> noEffective;

  const PokeDamageElement({
    required this.megaEffective,
    required this.superEffective,
    required this.normalEffective,
    required this.notVeryEffective,
    required this.slightlyEffective,
    required this.noEffective,
  });

  static PokeDamageElement getDefault() => const PokeDamageElement(
        megaEffective: [],
        superEffective: [],
        normalEffective: [],
        notVeryEffective: [],
        slightlyEffective: [],
        noEffective: [],
      );
}
