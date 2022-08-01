import 'package:flutter/material.dart';
import 'package:pokefinder/model/attack_effect_model.dart';
import 'package:pokefinder/model/poke_type.dart';

const Normal = const PokeType.init(
  1,
  "Normal",
  Color(0xFFA8A77A),
  TypeAttackModel(
    ghost: AtkEffect.NoEffective,
    rock: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
  ),
);

const Fire = const PokeType.init(
  2,
  "Fire",
  Color(0xFFEE8130),
  TypeAttackModel(
    fire: AtkEffect.NotVeryEffective,
    water: AtkEffect.NotVeryEffective,
    rock: AtkEffect.NotVeryEffective,
    dragon: AtkEffect.NotVeryEffective,
    grass: AtkEffect.SuperEffective,
    ice: AtkEffect.SuperEffective,
    bug: AtkEffect.SuperEffective,
    steel: AtkEffect.SuperEffective,
  ),
);

const Water = const PokeType.init(
  3,
  "Water",
  Color(0xFF6390F0),
  TypeAttackModel(
    water: AtkEffect.NotVeryEffective,
    grass: AtkEffect.NotVeryEffective,
    dragon: AtkEffect.NotVeryEffective,
    fire: AtkEffect.SuperEffective,
    ground: AtkEffect.SuperEffective,
    rock: AtkEffect.SuperEffective,
  ),
);

const Electric = const PokeType.init(
  4,
  "Electric",
  Color(0xFFF7D02C),
  TypeAttackModel(
    ground: AtkEffect.NoEffective,
    electric: AtkEffect.NotVeryEffective,
    grass: AtkEffect.NotVeryEffective,
    dragon: AtkEffect.NotVeryEffective,
    water: AtkEffect.SuperEffective,
    flying: AtkEffect.SuperEffective,
  ),
);

const Grass = const PokeType.init(
  5,
  "Grass",
  Color(0xFF7AC74C),
  TypeAttackModel(
    fire: AtkEffect.NotVeryEffective,
    grass: AtkEffect.NotVeryEffective,
    poison: AtkEffect.NotVeryEffective,
    flying: AtkEffect.NotVeryEffective,
    bug: AtkEffect.NotVeryEffective,
    dragon: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    water: AtkEffect.SuperEffective,
    ground: AtkEffect.SuperEffective,
    rock: AtkEffect.SuperEffective,
  ),
);

const Ice = const PokeType.init(
  6,
  "Ice",
  Color(0xFF96D9D6),
  TypeAttackModel(
    fire: AtkEffect.NotVeryEffective,
    water: AtkEffect.NotVeryEffective,
    ice: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    grass: AtkEffect.SuperEffective,
    ground: AtkEffect.SuperEffective,
    flying: AtkEffect.SuperEffective,
    dragon: AtkEffect.SuperEffective,
  ),
);

const Fighting = const PokeType.init(
  7,
  "Fighting",
  Color(0xFFC22E28),
  TypeAttackModel(
    ghost: AtkEffect.NoEffective,
    poison: AtkEffect.NotVeryEffective,
    flying: AtkEffect.NotVeryEffective,
    psychic: AtkEffect.NotVeryEffective,
    bug: AtkEffect.NotVeryEffective,
    fairly: AtkEffect.NotVeryEffective,
    normal: AtkEffect.SuperEffective,
    ice: AtkEffect.SuperEffective,
    rock: AtkEffect.SuperEffective,
    dark: AtkEffect.SuperEffective,
    steel: AtkEffect.SuperEffective,
  ),
);

const Poison = const PokeType.init(
  8,
  "Poison",
  Color(0xFFA33EA1),
  TypeAttackModel(
    steel: AtkEffect.NoEffective,
    poison: AtkEffect.NotVeryEffective,
    ground: AtkEffect.NotVeryEffective,
    rock: AtkEffect.NotVeryEffective,
    ghost: AtkEffect.NotVeryEffective,
    grass: AtkEffect.SuperEffective,
    fairly: AtkEffect.SuperEffective,
  ),
);

const Ground = const PokeType.init(
  9,
  "Ground",
  Color(0xFFE2BF65),
  TypeAttackModel(
    flying: AtkEffect.NoEffective,
    grass: AtkEffect.NotVeryEffective,
    bug: AtkEffect.NotVeryEffective,
    fire: AtkEffect.SuperEffective,
    electric: AtkEffect.SuperEffective,
    poison: AtkEffect.SuperEffective,
    rock: AtkEffect.SuperEffective,
    steel: AtkEffect.SuperEffective,
  ),
);

const Flying = const PokeType.init(
  10,
  "Flying",
  Color(0xFFA98FF3),
  TypeAttackModel(
    electric: AtkEffect.NotVeryEffective,
    rock: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    grass: AtkEffect.SuperEffective,
    fighting: AtkEffect.SuperEffective,
    bug: AtkEffect.SuperEffective,
  ),
);

const Psychic = const PokeType.init(
  11,
  "Psychic",
  Color(0xFFF95587),
  TypeAttackModel(
    dark: AtkEffect.NoEffective,
    psychic: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    fighting: AtkEffect.SuperEffective,
    poison: AtkEffect.SuperEffective,
  ),
);

const Bug = const PokeType.init(
  12,
  "Bug",
  Color(0xFFA6B91A),
  TypeAttackModel(
    fire: AtkEffect.NotVeryEffective,
    fighting: AtkEffect.NotVeryEffective,
    flying: AtkEffect.NotVeryEffective,
    poison: AtkEffect.NotVeryEffective,
    ghost: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    fairly: AtkEffect.NotVeryEffective,
    grass: AtkEffect.SuperEffective,
    psychic: AtkEffect.SuperEffective,
    dark: AtkEffect.SuperEffective,
  ),
);

const Rock = const PokeType.init(
  13,
  "Rock",
  Color(0xFFB6A136),
  TypeAttackModel(
    fighting: AtkEffect.NotVeryEffective,
    ground: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    fire: AtkEffect.SuperEffective,
    ice: AtkEffect.SuperEffective,
    flying: AtkEffect.SuperEffective,
    bug: AtkEffect.SuperEffective,
  ),
);

const Ghost = const PokeType.init(
  14,
  "Ghost",
  Color(0xFF735797),
  TypeAttackModel(
    normal: AtkEffect.NoEffective,
    dark: AtkEffect.NotVeryEffective,
    psychic: AtkEffect.SuperEffective,
    ghost: AtkEffect.SuperEffective,
  ),
);

const Dragon = const PokeType.init(
  15,
  "Dragon",
  Color(0xFF6F35FC),
  TypeAttackModel(
    fairly: AtkEffect.NoEffective,
    steel: AtkEffect.NotVeryEffective,
    dragon: AtkEffect.SuperEffective,
  ),
);

const Dark = const PokeType.init(
  16,
  "Dark",
  Color(0xFF705746),
  TypeAttackModel(
    fighting: AtkEffect.NotVeryEffective,
    dark: AtkEffect.NotVeryEffective,
    fairly: AtkEffect.NotVeryEffective,
    psychic: AtkEffect.SuperEffective,
    ghost: AtkEffect.SuperEffective,
  ),
);

const Steel = const PokeType.init(
  17,
  "Steel",
  Color(0xFFB7B7CE),
  TypeAttackModel(
    fire: AtkEffect.NotVeryEffective,
    water: AtkEffect.NotVeryEffective,
    electric: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    ice: AtkEffect.SuperEffective,
    rock: AtkEffect.SuperEffective,
    fairly: AtkEffect.SuperEffective,
  ),
);

const Fairly = const PokeType.init(
  18,
  "Fairly",
  Color(0xFFD685AD),
  TypeAttackModel(
    fire: AtkEffect.NotVeryEffective,
    poison: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    fighting: AtkEffect.SuperEffective,
    dragon: AtkEffect.SuperEffective,
    dark: AtkEffect.SuperEffective,
  ),
);
