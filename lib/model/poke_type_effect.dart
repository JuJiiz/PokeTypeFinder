import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefinder/model/effective.dart';

part 'poke_type_effect.freezed.dart';

@freezed
class PokeTypeEffect with _$PokeTypeEffect {
  const PokeTypeEffect._();

  const factory PokeTypeEffect({
    @Default(Effective.NormalEffective) Effective normal,
    @Default(Effective.NormalEffective) Effective fire,
    @Default(Effective.NormalEffective) Effective water,
    @Default(Effective.NormalEffective) Effective electric,
    @Default(Effective.NormalEffective) Effective grass,
    @Default(Effective.NormalEffective) Effective ice,
    @Default(Effective.NormalEffective) Effective fighting,
    @Default(Effective.NormalEffective) Effective poison,
    @Default(Effective.NormalEffective) Effective ground,
    @Default(Effective.NormalEffective) Effective flying,
    @Default(Effective.NormalEffective) Effective psychic,
    @Default(Effective.NormalEffective) Effective bug,
    @Default(Effective.NormalEffective) Effective rock,
    @Default(Effective.NormalEffective) Effective ghost,
    @Default(Effective.NormalEffective) Effective dragon,
    @Default(Effective.NormalEffective) Effective dark,
    @Default(Effective.NormalEffective) Effective steel,
    @Default(Effective.NormalEffective) Effective fairly,
  }) = _PokeTypeEffect;

  static const normalEffect = PokeTypeEffect(
    ghost: Effective.NoEffective,
    rock: Effective.NotVeryEffective,
    steel: Effective.NotVeryEffective,
  );

  static const fireEffect = PokeTypeEffect(
    fire: Effective.NotVeryEffective,
    water: Effective.NotVeryEffective,
    rock: Effective.NotVeryEffective,
    dragon: Effective.NotVeryEffective,
    grass: Effective.SuperEffective,
    ice: Effective.SuperEffective,
    bug: Effective.SuperEffective,
    steel: Effective.SuperEffective,
  );

  static const waterEffect = PokeTypeEffect(
    water: Effective.NotVeryEffective,
    grass: Effective.NotVeryEffective,
    dragon: Effective.NotVeryEffective,
    fire: Effective.SuperEffective,
    ground: Effective.SuperEffective,
    rock: Effective.SuperEffective,
  );

  static const electricEffect = PokeTypeEffect(
    ground: Effective.NoEffective,
    electric: Effective.NotVeryEffective,
    grass: Effective.NotVeryEffective,
    dragon: Effective.NotVeryEffective,
    water: Effective.SuperEffective,
    flying: Effective.SuperEffective,
  );

  static const grassEffect = PokeTypeEffect(
    fire: Effective.NotVeryEffective,
    grass: Effective.NotVeryEffective,
    poison: Effective.NotVeryEffective,
    flying: Effective.NotVeryEffective,
    bug: Effective.NotVeryEffective,
    dragon: Effective.NotVeryEffective,
    steel: Effective.NotVeryEffective,
    water: Effective.SuperEffective,
    ground: Effective.SuperEffective,
    rock: Effective.SuperEffective,
  );

  static const iceEffect = PokeTypeEffect(
    fire: Effective.NotVeryEffective,
    water: Effective.NotVeryEffective,
    ice: Effective.NotVeryEffective,
    steel: Effective.NotVeryEffective,
    grass: Effective.SuperEffective,
    ground: Effective.SuperEffective,
    flying: Effective.SuperEffective,
    dragon: Effective.SuperEffective,
  );

  static const fightingEffect = PokeTypeEffect(
    ghost: Effective.NoEffective,
    poison: Effective.NotVeryEffective,
    flying: Effective.NotVeryEffective,
    psychic: Effective.NotVeryEffective,
    bug: Effective.NotVeryEffective,
    fairly: Effective.NotVeryEffective,
    normal: Effective.SuperEffective,
    ice: Effective.SuperEffective,
    rock: Effective.SuperEffective,
    dark: Effective.SuperEffective,
    steel: Effective.SuperEffective,
  );

  static const poisonEffect = PokeTypeEffect(
    steel: Effective.NoEffective,
    poison: Effective.NotVeryEffective,
    ground: Effective.NotVeryEffective,
    rock: Effective.NotVeryEffective,
    ghost: Effective.NotVeryEffective,
    grass: Effective.SuperEffective,
    fairly: Effective.SuperEffective,
  );

  static const groundEffect = PokeTypeEffect(
    flying: Effective.NoEffective,
    grass: Effective.NotVeryEffective,
    bug: Effective.NotVeryEffective,
    fire: Effective.SuperEffective,
    electric: Effective.SuperEffective,
    poison: Effective.SuperEffective,
    rock: Effective.SuperEffective,
    steel: Effective.SuperEffective,
  );

  static const flyingEffect = PokeTypeEffect(
    electric: Effective.NotVeryEffective,
    rock: Effective.NotVeryEffective,
    steel: Effective.NotVeryEffective,
    grass: Effective.SuperEffective,
    fighting: Effective.SuperEffective,
    bug: Effective.SuperEffective,
  );

  static const psychicEffect = PokeTypeEffect(
    dark: Effective.NoEffective,
    psychic: Effective.NotVeryEffective,
    steel: Effective.NotVeryEffective,
    fighting: Effective.SuperEffective,
    poison: Effective.SuperEffective,
  );

  static const bugEffect = PokeTypeEffect(
    fire: Effective.NotVeryEffective,
    fighting: Effective.NotVeryEffective,
    flying: Effective.NotVeryEffective,
    poison: Effective.NotVeryEffective,
    ghost: Effective.NotVeryEffective,
    steel: Effective.NotVeryEffective,
    fairly: Effective.NotVeryEffective,
    grass: Effective.SuperEffective,
    psychic: Effective.SuperEffective,
    dark: Effective.SuperEffective,
  );

  static const rockEffect = PokeTypeEffect(
    fighting: Effective.NotVeryEffective,
    ground: Effective.NotVeryEffective,
    steel: Effective.NotVeryEffective,
    fire: Effective.SuperEffective,
    ice: Effective.SuperEffective,
    flying: Effective.SuperEffective,
    bug: Effective.SuperEffective,
  );

  static const ghostEffect = PokeTypeEffect(
    normal: Effective.NoEffective,
    dark: Effective.NotVeryEffective,
    psychic: Effective.SuperEffective,
    ghost: Effective.SuperEffective,
  );

  static const dragonEffect = PokeTypeEffect(
    fairly: Effective.NoEffective,
    steel: Effective.NotVeryEffective,
    dragon: Effective.SuperEffective,
  );

  static const darkEffect = PokeTypeEffect(
    fighting: Effective.NotVeryEffective,
    dark: Effective.NotVeryEffective,
    fairly: Effective.NotVeryEffective,
    psychic: Effective.SuperEffective,
    ghost: Effective.SuperEffective,
  );

  static const steelEffect = PokeTypeEffect(
    fire: Effective.NotVeryEffective,
    water: Effective.NotVeryEffective,
    electric: Effective.NotVeryEffective,
    steel: Effective.NotVeryEffective,
    ice: Effective.SuperEffective,
    rock: Effective.SuperEffective,
    fairly: Effective.SuperEffective,
  );

  static const fairlyEffect = PokeTypeEffect(
    fire: Effective.NotVeryEffective,
    poison: Effective.NotVeryEffective,
    steel: Effective.NotVeryEffective,
    fighting: Effective.SuperEffective,
    dragon: Effective.SuperEffective,
    dark: Effective.SuperEffective,
  );
}
