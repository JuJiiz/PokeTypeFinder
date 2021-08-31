import 'package:flutter/material.dart';
import 'package:pokefinder/dynamic_poke_element_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokeTypeFinder',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: DynamicPokeElementPage(),
    );
  }
}
