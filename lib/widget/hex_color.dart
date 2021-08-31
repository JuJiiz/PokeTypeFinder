import 'package:flutter/material.dart';

class HexColor extends Color {
  HexColor._(int value) : super(value);

  factory HexColor(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return HexColor._(int.parse(buffer.toString(), radix: 16));
  }
}
