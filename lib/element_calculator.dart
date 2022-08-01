import 'package:pokefinder/model/all_poke_element.dart';
import 'package:pokefinder/model/attack_effect_model.dart';
import 'package:pokefinder/model/poke_damage_element.dart';
import 'package:pokefinder/model/poke_type.dart';

enum Effective { WEAKNESS, RESISTANCE }

class ElementCalculator {
  static final List<PokeType> allElements = [
    Normal,
    Fire,
    Water,
    Electric,
    Grass,
    Ice,
    Fighting,
    Poison,
    Ground,
    Flying,
    Psychic,
    Bug,
    Rock,
    Ghost,
    Dragon,
    Dark,
    Steel,
    Fairly,
  ];

  static PokeDamageElement findTheMostEffectiveAttackByEnemyType({
    required PokeType primary,
    PokeType? secondary,
  }) {
    if(secondary == primary) secondary = null;
    List<PokeType> megaEffective = [];
    List<PokeType> superEffective = [];
    List<PokeType> normalEffective = [];
    List<PokeType> notVeryEffective = [];
    List<PokeType> slightlyEffective = [];
    List<PokeType> noEffective = [];

    allElements.forEach((element) {
      AtkEffect? effectivePrimary;
      AtkEffect? effectiveSecondary;

      effectivePrimary = _searchEffectByElement(
        elementThatTakenDamage: primary,
        elementThatAttack: element,
      );

      if (secondary != null) {
        effectiveSecondary = _searchEffectByElement(
          elementThatTakenDamage: secondary,
          elementThatAttack: element,
        );
      }

      if (effectivePrimary != null) {
        double multiplier = effectivePrimary.multiplier;
        if (effectiveSecondary != null) {
          multiplier = multiplier * effectiveSecondary.multiplier;
        }

        if (multiplier == AtkEffect.MegaEffective.multiplier) {
          megaEffective.add(element);
        } else if (multiplier == AtkEffect.SuperEffective.multiplier) {
          superEffective.add(element);
        } else if (multiplier == AtkEffect.NormalEffective.multiplier) {
          normalEffective.add(element);
        } else if (multiplier == AtkEffect.NotVeryEffective.multiplier) {
          notVeryEffective.add(element);
        } else if (multiplier == AtkEffect.SlightlyEffective.multiplier) {
          slightlyEffective.add(element);
        } else if (multiplier == AtkEffect.NoEffective.multiplier) {
          noEffective.add(element);
        }
      }
    });

    return PokeDamageElement(
      megaEffective: megaEffective,
      superEffective: superEffective,
      normalEffective: normalEffective,
      notVeryEffective: notVeryEffective,
      slightlyEffective: slightlyEffective,
      noEffective: noEffective,
    );
  }

  static AtkEffect? _searchEffectByElement({
    required PokeType elementThatTakenDamage,
    required PokeType elementThatAttack,
  }) {
    AtkEffect? output;
    switch (elementThatTakenDamage) {
      case Normal:
        {
          output = elementThatAttack.atk.normal;
          break;
        }
      case Fire:
        {
          output = elementThatAttack.atk.fire;
          break;
        }
      case Water:
        {
          output = elementThatAttack.atk.water;
          break;
        }
      case Electric:
        {
          output = elementThatAttack.atk.electric;
          break;
        }
      case Grass:
        {
          output = elementThatAttack.atk.grass;
          break;
        }
      case Ice:
        {
          output = elementThatAttack.atk.ice;
          break;
        }
      case Fighting:
        {
          output = elementThatAttack.atk.fighting;
          break;
        }
      case Poison:
        {
          output = elementThatAttack.atk.poison;
          break;
        }
      case Ground:
        {
          output = elementThatAttack.atk.ground;
          break;
        }
      case Flying:
        {
          output = elementThatAttack.atk.flying;
          break;
        }
      case Psychic:
        {
          output = elementThatAttack.atk.psychic;
          break;
        }
      case Bug:
        {
          output = elementThatAttack.atk.bug;
          break;
        }
      case Rock:
        {
          output = elementThatAttack.atk.rock;
          break;
        }
      case Ghost:
        {
          output = elementThatAttack.atk.ghost;
          break;
        }
      case Dragon:
        {
          output = elementThatAttack.atk.dragon;
          break;
        }
      case Dark:
        {
          output = elementThatAttack.atk.dark;
          break;
        }
      case Steel:
        {
          output = elementThatAttack.atk.steel;
          break;
        }
      case Fairly:
        {
          output = elementThatAttack.atk.fairly;
          break;
        }
    }

    return output;
  }
}
