import 'package:flutter/material.dart';
import 'package:pokefinder/model/attack_effect_model.dart';

class PokeType {
  final int id;
  final String name;
  final Color color;
  final TypeAttackModel atk;

  const PokeType.init(
    this.id,
    this.name,
    this.color,
    this.atk,
  );
}
