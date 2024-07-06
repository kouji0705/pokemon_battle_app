import '../models/pokemon.dart';

final pikachu = Pokemon(
  name: 'ピカチュウ',
  imageUrl:
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
  moves: [
    Move(name: 'Thunderbolt', power: 90),
    Move(name: 'Quick Attack', power: 40),
    Move(name: 'Iron Tail', power: 100),
    Move(name: 'Electro Ball', power: 80),
  ],
);

final charmander = Pokemon(
  name: 'ヒトカゲ',
  imageUrl:
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png',
  moves: [
    Move(name: 'Flamethrower', power: 90),
    Move(name: 'Scratch', power: 40),
    Move(name: 'Dragon Breath', power: 60),
    Move(name: 'Fire Spin', power: 35),
  ],
);
