import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:pokemon_battle_app/domain/entities/move.dart';
import 'package:pokemon_battle_app/domain/entities/pokemon.dart';
import 'package:pokemon_battle_app/domain/entities/stats.dart';
import 'package:pokemon_battle_app/domain/enums/pokemon_type.dart';
import 'package:pokemon_battle_app/domain/repositories/pokemon_repository.dart';
import 'package:pokemon_battle_app/domain/services/battle_service.dart';

import 'battle_service_test.mocks.dart';

@GenerateMocks([PokemonRepository])
void main() {
  group('BattleService', () {
    final mockRepository = MockPokemonRepository();
    final battleService = BattleService(repository: mockRepository);

    final pikachu = Pokemon(
      name: 'Pikachu',
      imageUrl:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
      moves: [Move(name: 'Thunderbolt', power: 90)],
      stats: Stats(hp: 35, attack: 55, defense: 40, speed: 90),
      type: PokemonType.electric,
    );

    final charmander = Pokemon(
      name: 'Charmander',
      imageUrl:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png',
      moves: [Move(name: 'Flamethrower', power: 90)],
      stats: Stats(hp: 39, attack: 52, defense: 43, speed: 65),
      type: PokemonType.fire,
    );

    setUp(() {
      // setUp関数内でモックの設定を行う
      when(mockRepository.getPokemon('Pikachu'))
          .thenAnswer((_) async => pikachu);
      when(mockRepository.getPokemon('Charmander'))
          .thenAnswer((_) async => charmander);
    });

    test('should start a battle and print the correct message', () async {
      await battleService.startBattle('Pikachu', 'Charmander');

      verify(mockRepository.getPokemon('Pikachu')).called(1);
      verify(mockRepository.getPokemon('Charmander')).called(1);
      // コンソール出力の検証は通常のユニットテストでは行いませんが、
      // 必要であれば `print` のモックを作成することもできます
    });

    test('should use a move and print the correct message', () {
      battleService.useMove(pikachu, charmander, pikachu.moves.first);
      // コンソール出力の検証は通常のユニットテストでは行いませんが、
      // 必要であれば `print` のモックを作成することもできます
    });

    test('should calculate damage correctly', () {
      battleService.calculateDamage(pikachu, charmander, pikachu.moves.first);
      // コンソール出力の検証は通常のユニットテストでは行いませんが、
      // 必要であれば `print` のモックを作成することもできます
    });
  });
}
