import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_battle_app/domain/entities/move.dart';

void main() {
  group('Move', () {
    test('should create a Move with correct properties', () {
      final move = Move(name: 'Thunderbolt', power: 90);

      expect(move.name, 'Thunderbolt');
      expect(move.power, 90);
    });
  });
}
