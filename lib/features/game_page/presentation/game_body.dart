import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/game/domain/entities/player.dart';
import 'package:munchkin_notebook1/features/game_page/presentation/player_item.dart';

class GameBody extends StatelessWidget {
  const GameBody({super.key, required this.players});

  final List<Player> players;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: players.length,
        prototypeItem: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: PlayerItem(player: players.first),
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: PlayerItem(player: players[index]),
          );
        });
  }
}
