import 'package:pokefinder/model/effective.dart';
import 'package:pokefinder/model/effective_type_result.dart';
import 'package:pokefinder/model/poke_type.dart';

class ElementCalculator {
  ElementCalculator._();

  static Effective _searchEffectByElement({
    required PokeType elementThatTakenDamage,
    required PokeType elementThatAttack,
  }) {
    Effective output = elementThatTakenDamage.map(
      normal: (e) => elementThatAttack.atk.normal,
      fire: (e) => elementThatAttack.atk.fire,
      water: (e) => elementThatAttack.atk.water,
      electric: (e) => elementThatAttack.atk.electric,
      grass: (e) => elementThatAttack.atk.grass,
      ice: (e) => elementThatAttack.atk.ice,
      fighting: (e) => elementThatAttack.atk.fighting,
      poison: (e) => elementThatAttack.atk.poison,
      ground: (e) => elementThatAttack.atk.ground,
      flying: (e) => elementThatAttack.atk.flying,
      psychic: (e) => elementThatAttack.atk.psychic,
      bug: (e) => elementThatAttack.atk.bug,
      rock: (e) => elementThatAttack.atk.rock,
      ghost: (e) => elementThatAttack.atk.ghost,
      dragon: (e) => elementThatAttack.atk.dragon,
      dark: (e) => elementThatAttack.atk.dark,
      steel: (e) => elementThatAttack.atk.steel,
      fairly: (e) => elementThatAttack.atk.fairly,
    );

    return output;
  }

  static EffectiveTypeResult findTheMostEffectiveAttackByEnemyType({
    required PokeType primary,
    PokeType? secondary,
  }) {
    if (secondary == primary) secondary = null;
    EffectiveTypeResult result = EffectiveTypeResult();

    for (final element in PokeType.allPokeTypes) {
      Effective? effectivePrimary = _searchEffectByElement(
        elementThatTakenDamage: primary,
        elementThatAttack: element,
      );

      Effective? effectiveSecondary;
      if (secondary != null) {
        effectiveSecondary = _searchEffectByElement(
          elementThatTakenDamage: secondary,
          elementThatAttack: element,
        );
      }

      final double multiplier =
          effectivePrimary.multiplier * (effectiveSecondary?.multiplier ?? 1);

      if (multiplier == Effective.MegaEffective.multiplier) {
        result = result.copyWith(
          megaEffective: [...result.megaEffective, element],
        );
      } else if (multiplier == Effective.SuperEffective.multiplier) {
        result = result.copyWith(
          superEffective: [...result.superEffective, element],
        );
      } else if (multiplier == Effective.NormalEffective.multiplier) {
        result = result.copyWith(
          normalEffective: [...result.normalEffective, element],
        );
      } else if (multiplier == Effective.NotVeryEffective.multiplier) {
        result = result.copyWith(
          notVeryEffective: [...result.notVeryEffective, element],
        );
      } else if (multiplier == Effective.SlightlyEffective.multiplier) {
        result = result.copyWith(
          slightlyEffective: [...result.slightlyEffective, element],
        );
      } else if (multiplier == Effective.NoEffective.multiplier) {
        result = result.copyWith(
          noEffective: [...result.noEffective, element],
        );
      }
    }

    return result;
  }
}
