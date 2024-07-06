import '../repositories/pokemon_repository.dart';
import '../entities/pokemon.dart';
import '../entities/move.dart';

class BattleService {
  final PokemonRepository _repository;

  // 名前付きパラメータを定義
  BattleService({required PokemonRepository repository})
      : _repository = repository;

  Future<void> startBattle(String name1, String name2) async {
    final pokemon1 = await _repository.getPokemon(name1);
    final pokemon2 = await _repository.getPokemon(name2);
    print('Battle started between ${pokemon1.name} and ${pokemon2.name}');
    // バトルロジックをここに追加
  }

  void useMove(Pokemon attacker, Pokemon defender, Move move) {
    print('${attacker.name} uses ${move.name} on ${defender.name}');
    // ダメージ計算やその他のバトルロジックをここに追加
  }

  void calculateDamage(Pokemon attacker, Pokemon defender, Move move) {
    // 簡単なダメージ計算ロジック
    int damage = (move.power * attacker.stats.attack) ~/ defender.stats.defense;
    print('${defender.name} receives $damage damage');
    // ここで防御側のHPを減らすロジックを追加する
  }
}
