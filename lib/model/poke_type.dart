import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefinder/constants/color_res.dart';
import 'package:pokefinder/model/poke_type_effect.dart';

part 'poke_type.freezed.dart';

@freezed
class PokeType with _$PokeType {
  const factory PokeType.normal({
    @Default(1) int id,
    @Default('Normal') String name,
    @Default(ColorRes.typeColorNormal) Color color,
    @Default(PokeTypeEffect.normalEffect) PokeTypeEffect atk,
  }) = _PokeTypeNormal;

  const factory PokeType.fire({
    @Default(2) int id,
    @Default('Fire') String name,
    @Default(ColorRes.typeColorFire) Color color,
    @Default(PokeTypeEffect.fireEffect) PokeTypeEffect atk,
  }) = _PokeTypeFire;

  const factory PokeType.water({
    @Default(3) int id,
    @Default('Water') String name,
    @Default(ColorRes.typeColorWater) Color color,
    @Default(PokeTypeEffect.waterEffect) PokeTypeEffect atk,
  }) = _PokeTypeWater;

  const factory PokeType.electric({
    @Default(4) int id,
    @Default('Electric') String name,
    @Default(ColorRes.typeColorElectric) Color color,
    @Default(PokeTypeEffect.electricEffect) PokeTypeEffect atk,
  }) = _PokeTypeElectric;

  const factory PokeType.grass({
    @Default(5) int id,
    @Default('Grass') String name,
    @Default(ColorRes.typeColorGrass) Color color,
    @Default(PokeTypeEffect.grassEffect) PokeTypeEffect atk,
  }) = _PokeTypeGrass;

  const factory PokeType.ice({
    @Default(6) int id,
    @Default('Ice') String name,
    @Default(ColorRes.typeColorIce) Color color,
    @Default(PokeTypeEffect.iceEffect) PokeTypeEffect atk,
  }) = _PokeTypeIce;

  const factory PokeType.fighting({
    @Default(7) int id,
    @Default('Fighting') String name,
    @Default(ColorRes.typeColorFighting) Color color,
    @Default(PokeTypeEffect.fightingEffect) PokeTypeEffect atk,
  }) = _PokeTypeFighting;

  const factory PokeType.poison({
    @Default(8) int id,
    @Default('Poison') String name,
    @Default(ColorRes.typeColorPoison) Color color,
    @Default(PokeTypeEffect.poisonEffect) PokeTypeEffect atk,
  }) = _PokeTypePoison;

  const factory PokeType.ground({
    @Default(9) int id,
    @Default('Ground') String name,
    @Default(ColorRes.typeColorGround) Color color,
    @Default(PokeTypeEffect.groundEffect) PokeTypeEffect atk,
  }) = _PokeTypeGround;

  const factory PokeType.flying({
    @Default(10) int id,
    @Default('Flying') String name,
    @Default(ColorRes.typeColorFlying) Color color,
    @Default(PokeTypeEffect.flyingEffect) PokeTypeEffect atk,
  }) = _PokeTypeFlying;

  const factory PokeType.psychic({
    @Default(11) int id,
    @Default('Psychic') String name,
    @Default(ColorRes.typeColorPsychic) Color color,
    @Default(PokeTypeEffect.psychicEffect) PokeTypeEffect atk,
  }) = _PokeTypePsychic;

  const factory PokeType.bug({
    @Default(12) int id,
    @Default('Bug') String name,
    @Default(ColorRes.typeColorBug) Color color,
    @Default(PokeTypeEffect.bugEffect) PokeTypeEffect atk,
  }) = _PokeTypeBug;

  const factory PokeType.rock({
    @Default(13) int id,
    @Default('Rock') String name,
    @Default(ColorRes.typeColorRock) Color color,
    @Default(PokeTypeEffect.rockEffect) PokeTypeEffect atk,
  }) = _PokeTypeRock;

  const factory PokeType.ghost({
    @Default(14) int id,
    @Default('Ghost') String name,
    @Default(ColorRes.typeColorGhost) Color color,
    @Default(PokeTypeEffect.ghostEffect) PokeTypeEffect atk,
  }) = _PokeTypeGhost;

  const factory PokeType.dragon({
    @Default(15) int id,
    @Default('Dragon') String name,
    @Default(ColorRes.typeColorDragon) Color color,
    @Default(PokeTypeEffect.dragonEffect) PokeTypeEffect atk,
  }) = _PokeTypeDragon;

  const factory PokeType.dark({
    @Default(16) int id,
    @Default('Dark') String name,
    @Default(ColorRes.typeColorDark) Color color,
    @Default(PokeTypeEffect.darkEffect) PokeTypeEffect atk,
  }) = _PokeTypeDark;

  const factory PokeType.steel({
    @Default(17) int id,
    @Default('Steel') String name,
    @Default(ColorRes.typeColorSteel) Color color,
    @Default(PokeTypeEffect.steelEffect) PokeTypeEffect atk,
  }) = _PokeTypeSteel;

  const factory PokeType.fairly({
    @Default(18) int id,
    @Default('Fairly') String name,
    @Default(ColorRes.typeColorFairly) Color color,
    @Default(PokeTypeEffect.fairlyEffect) PokeTypeEffect atk,
  }) = _PokeTypeFairly;

  static List<PokeType> allPokeTypes = const [
    PokeType.normal(),
    PokeType.fire(),
    PokeType.water(),
    PokeType.electric(),
    PokeType.grass(),
    PokeType.ice(),
    PokeType.fighting(),
    PokeType.poison(),
    PokeType.ground(),
    PokeType.flying(),
    PokeType.psychic(),
    PokeType.bug(),
    PokeType.rock(),
    PokeType.ghost(),
    PokeType.dragon(),
    PokeType.dark(),
    PokeType.steel(),
    PokeType.fairly(),
  ];
}
