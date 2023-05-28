import 'package:munchkin_notebook1/features/game/domain/entities/player.dart';

class Game {
  Game({required this.maxLevel, required this.selfCounting});

  int maxLevel = 10;
  bool selfCounting = false;
  final List<Player> _players = [];

  List<Player> get getPlayers => _players;

  bool hasSameName(String name) =>
      _players.indexWhere((player) => player.name == name) > 0;

  void addPlayer(Player player) {
    _players.add(player);
  }
}
