import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_battle_app/domain/entities/stats.dart';

void main() {
  group('Stats', () {
    test('should create Stats with correct properties', () {
      final stats = Stats(hp: 35, attack: 55, defense: 40, speed: 90);

      expect(stats.hp, 35);
      expect(stats.attack, 55);
      expect(stats.defense, 40);
      expect(stats.speed, 90);
    });
  });
}
