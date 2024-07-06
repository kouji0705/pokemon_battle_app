import 'move.dart';
import 'stats.dart';
import '../enums/pokemon_type.dart';

class Pokemon {
  final String name;
  final String imageUrl;
  final List<Move> moves;
  final Stats stats;
  final PokemonType type;

  Pokemon({
    required this.name,
    required this.imageUrl,
    required this.moves,
    required this.stats,
    required this.type,
  });
}
