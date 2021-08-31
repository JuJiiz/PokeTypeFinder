import 'package:pokefinder/model/attack_effect_model.dart';
import 'package:pokefinder/model/poke_element_model.dart';

const Normal = const PokeElement.init(
  "Normal",
  "#A8A77A",
  ElementAttackModel(
    ghost: AtkEffect.NoEffective,
    rock: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
  ),
);

const Fire = const PokeElement.init(
  "Fire",
  "#EE8130",
  ElementAttackModel(
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

const Water = const PokeElement.init(
  "Water",
  "#6390F0",
  ElementAttackModel(
    water: AtkEffect.NotVeryEffective,
    grass: AtkEffect.NotVeryEffective,
    dragon: AtkEffect.NotVeryEffective,
    fire: AtkEffect.SuperEffective,
    ground: AtkEffect.SuperEffective,
    rock: AtkEffect.SuperEffective,
  ),
);

const Electric = const PokeElement.init(
  "Electric",
  "#F7D02C",
  ElementAttackModel(
    ground: AtkEffect.NoEffective,
    electric: AtkEffect.NotVeryEffective,
    grass: AtkEffect.NotVeryEffective,
    dragon: AtkEffect.NotVeryEffective,
    water: AtkEffect.SuperEffective,
    flying: AtkEffect.SuperEffective,
  ),
);

const Grass = const PokeElement.init(
  "Grass",
  "#7AC74C",
  ElementAttackModel(
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

const Ice = const PokeElement.init(
  "Ice",
  "#96D9D6",
  ElementAttackModel(
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

const Fighting = const PokeElement.init(
  "Fighting",
  "#C22E28",
  ElementAttackModel(
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

const Poison = const PokeElement.init(
  "Poison",
  "#A33EA1",
  ElementAttackModel(
    steel: AtkEffect.NoEffective,
    poison: AtkEffect.NotVeryEffective,
    ground: AtkEffect.NotVeryEffective,
    rock: AtkEffect.NotVeryEffective,
    ghost: AtkEffect.NotVeryEffective,
    grass: AtkEffect.SuperEffective,
    fairly: AtkEffect.SuperEffective,
  ),
);

const Ground = const PokeElement.init(
  "Ground",
  "#E2BF65",
  ElementAttackModel(
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

const Flying = const PokeElement.init(
  "Flying",
  "#A98FF3",
  ElementAttackModel(
    electric: AtkEffect.NotVeryEffective,
    rock: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    grass: AtkEffect.SuperEffective,
    fighting: AtkEffect.SuperEffective,
    bug: AtkEffect.SuperEffective,
  ),
);

const Psychic = const PokeElement.init(
  "Psychic",
  "#F95587",
  ElementAttackModel(
    dark: AtkEffect.NoEffective,
    psychic: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    fighting: AtkEffect.SuperEffective,
    poison: AtkEffect.SuperEffective,
  ),
);

const Bug = const PokeElement.init(
  "Bug",
  "#A6B91A",
  ElementAttackModel(
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

const Rock = const PokeElement.init(
  "Rock",
  "#B6A136",
  ElementAttackModel(
    fighting: AtkEffect.NotVeryEffective,
    ground: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    fire: AtkEffect.SuperEffective,
    ice: AtkEffect.SuperEffective,
    flying: AtkEffect.SuperEffective,
    bug: AtkEffect.SuperEffective,
  ),
);

const Ghost = const PokeElement.init(
  "Ghost",
  "#735797",
  ElementAttackModel(
    normal: AtkEffect.NoEffective,
    dark: AtkEffect.NotVeryEffective,
    psychic: AtkEffect.SuperEffective,
    ghost: AtkEffect.SuperEffective,
  ),
);

const Dragon = const PokeElement.init(
  "Dragon",
  "#6F35FC",
  ElementAttackModel(
    fairly: AtkEffect.NoEffective,
    steel: AtkEffect.NotVeryEffective,
    dragon: AtkEffect.SuperEffective,
  ),
);

const Dark = const PokeElement.init(
  "Dark",
  "#705746",
  ElementAttackModel(
    fighting: AtkEffect.NotVeryEffective,
    dark: AtkEffect.NotVeryEffective,
    fairly: AtkEffect.NotVeryEffective,
    psychic: AtkEffect.SuperEffective,
    ghost: AtkEffect.SuperEffective,
  ),
);

const Steel = const PokeElement.init(
  "Steel",
  "#B7B7CE",
  ElementAttackModel(
    fire: AtkEffect.NotVeryEffective,
    water: AtkEffect.NotVeryEffective,
    electric: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    ice: AtkEffect.SuperEffective,
    rock: AtkEffect.SuperEffective,
    fairly: AtkEffect.SuperEffective,
  ),
);

const Fairly = const PokeElement.init(
  "Fairly",
  "#D685AD",
  ElementAttackModel(
    fire: AtkEffect.NotVeryEffective,
    poison: AtkEffect.NotVeryEffective,
    steel: AtkEffect.NotVeryEffective,
    fighting: AtkEffect.SuperEffective,
    dragon: AtkEffect.SuperEffective,
    dark: AtkEffect.SuperEffective,
  ),
);
