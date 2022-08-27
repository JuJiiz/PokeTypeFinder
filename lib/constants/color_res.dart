import 'package:flutter/material.dart';

class ColorRes extends Color {
  ColorRes._(int value) : super(value);

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return ColorRes._(int.parse(buffer.toString(), radix: 16));
  }

  static const typeColorNormal = Color(0xFFA8A77A);
  static const typeColorFire = Color(0xFFEE8130);
  static const typeColorWater = Color(0xFF6390F0);
  static const typeColorElectric = Color(0xFFF7D02C);
  static const typeColorGrass = Color(0xFF7AC74C);
  static const typeColorIce = Color(0xFF96D9D6);
  static const typeColorFighting = Color(0xFFC22E28);
  static const typeColorPoison = Color(0xFFA33EA1);
  static const typeColorGround = Color(0xFFE2BF65);
  static const typeColorFlying = Color(0xFFA98FF3);
  static const typeColorPsychic = Color(0xFFF95587);
  static const typeColorBug = Color(0xFFA6B91A);
  static const typeColorRock = Color(0xFFB6A136);
  static const typeColorGhost = Color(0xFF735797);
  static const typeColorDragon = Color(0xFF6F35FC);
  static const typeColorDark = Color(0xFF705746);
  static const typeColorSteel = Color(0xFFB7B7CE);
  static const typeColorFairly = Color(0xFFD685AD);
}
