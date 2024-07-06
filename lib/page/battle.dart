import 'package:flutter/material.dart';
import '../models/pokemon.dart';
import '../data/sample_data.dart';

class BattlePage extends StatelessWidget {
  final Pokemon pokemon1 = pikachu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon Battle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPokemonInfo(pokemon1),
          ],
        ),
      ),
    );
  }

  Widget _buildPokemonInfo(Pokemon pokemon) {
    return Column(
      children: [
        Text(
          pokemon.name,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Image.network(pokemon.imageUrl, height: 100, width: 100),
        Column(
          children: pokemon.moves
              .map((move) => Text('${move.name} (${move.power})'))
              .toList(),
        ),
      ],
    );
  }
}
