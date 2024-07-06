class Pokemon {
  final String name;
  final String imageUrl;
  final List<Move> moves;

  Pokemon({required this.name, required this.imageUrl, required this.moves});
}

class Move {
  final String name;
  final int power;

  Move({required this.name, required this.power});
}
