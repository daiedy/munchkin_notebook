import 'package:munchkin_notebook1/features/game/domain/entities/player.dart';

class Game {
  Game(
      {this.maxLevel = 10, this.selfCounting = false, this.players = const []});

  final int maxLevel;
  final bool selfCounting;
  final List<Player> players;

  List<Player> get getPlayers => players;
  bool get isEmptyGame => players.length <= 1;

  bool hasSameName(String name) =>
      players.indexWhere((player) => player.name == name) > 0;

  Game addPlayer(Player player) {
    return copyWith(players: [...players, player]);
  }

  Game copyWith({
    int? maxLevel,
    bool? selfCounting,
    List<Player>? players,
  }) =>
      Game(
        maxLevel: maxLevel ?? this.maxLevel,
        selfCounting: selfCounting ?? this.selfCounting,
        players: players ?? this.players,
      );

  Player getPlayer(int playerId) {
    return players.firstWhere((player) => player.id == playerId);
  }

  void changePlayer({required int playerId, int? level, int? bonus}) {
    Player player = getPlayer(playerId);
    int index = players.indexOf(player);
    players[index] = player.copyWith(
      level: level,
      bonus: bonus,
    );
  }
}
