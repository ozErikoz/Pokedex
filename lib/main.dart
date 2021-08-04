import 'package:flutter/material.dart';
import 'package:pokedex/pages/pokedex_page.dart';

void main() {
  runApp(PokeApp());
}

class PokeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      title: 'Pokedex',
      home: PokedexPage(),
    );
  }
}
