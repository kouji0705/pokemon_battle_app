import 'package:flutter/material.dart';
import 'models/pokemon.dart';
import 'data/sample_data.dart';

class PokemonBattlePage extends StatelessWidget {
  final Pokemon pokemon1 = pikachu;
  // final Pokemon pokemon2 = charmander;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon Battle'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildPokemonInfo(pokemon1),
          // _buildPokemonInfo(pokemon2),
        ],
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
