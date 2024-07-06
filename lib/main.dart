import 'package:flutter/material.dart';
import 'router.dart';

void main() {
  runApp(PokemonApp());
}

class PokemonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pokemon App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: router,
    );
  }
}
