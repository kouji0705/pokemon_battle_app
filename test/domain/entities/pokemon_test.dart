import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_battle_app/domain/entities/move.dart';
import 'package:pokemon_battle_app/domain/entities/pokemon.dart';
import 'package:pokemon_battle_app/domain/entities/stats.dart';
import 'package:pokemon_battle_app/domain/enums/pokemon_type.dart';

void main() {
  group('Pokemon', () {
    test('should create a Pokemon with correct properties', () {
      final move1 = Move(name: 'Thunderbolt', power: 90);
      final move2 = Move(name: 'Quick Attack', power: 40);
      final moves = [move1, move2];
      final stats = Stats(hp: 35, attack: 55, defense: 40, speed: 90);
      final pokemon = Pokemon(
        name: 'Pikachu',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
        moves: moves,
        stats: stats,
        type: PokemonType.electric,
      );

      expect(pokemon.name, 'Pikachu');
      expect(pokemon.imageUrl,
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png');
      expect(pokemon.moves, moves);
      expect(pokemon.stats.hp, 35);
      expect(pokemon.stats.attack, 55);
      expect(pokemon.stats.defense, 40);
      expect(pokemon.stats.speed, 90);
      expect(pokemon.type, PokemonType.electric);
    });
  });
}
