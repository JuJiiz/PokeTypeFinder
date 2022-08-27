import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      child: PokeFinderApp(),
    ),
  );
}

class PokeFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokeFinder',
      theme: ThemeData(
        primaryColor: Color(0xffd9432e),
        backgroundColor: Color(0xFFEFEFEF)
      ),
      home: HomePage(),
    );
  }
}
