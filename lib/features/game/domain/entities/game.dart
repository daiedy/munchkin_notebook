import 'package:munchkin_notebook1/features/game/domain/entities/player.dart';

class Game {
  Game(
      {required this.maxLevel, required this.isAnarchy, required this.players});

  int maxLevel = 10;
  bool isAnarchy = false;
  List<Player> players = [];
}
