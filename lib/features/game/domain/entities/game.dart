import 'package:munchkin_notebook1/features/game/domain/entities/player.dart';

class Game {
  Game({required this.maxLevel, required this.selfCounting});

  int maxLevel = 10;
  bool selfCounting = false;
  List<Player> players = [];
}
