import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/game/domain/entities/player.dart';
import 'package:munchkin_notebook1/features/game_page/presentation/widgets/player_item.dart';

class GameBody extends StatelessWidget {
  static const itemPadding = EdgeInsets.symmetric(vertical: 10);

  const GameBody({super.key, required this.players});

  final List<Player> players;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: players.length,
        prototypeItem: Padding(
          padding: itemPadding,
          child: PlayerItem(player: players.first),
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: itemPadding,
            child: PlayerItem(player: players[index]),
          );
        });
  }
}
