import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:munchkin_notebook1/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook1/features/game_page/presentation/widgets/empty_game_body.dart';
import 'package:munchkin_notebook1/features/game_page/presentation/widgets/game_body.dart';
import 'package:munchkin_notebook1/main.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@RoutePage()
class GamePage extends StatelessWidget {
  static const double gameButtonSize = 50;

  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.game_title,
        body: BlocBuilder(
          bloc: gameBloc,
          builder: (context, state) {
            if (state is GameCreated) {
              return state.game.isEmptyGame
                  ? const EmptyGameBody()
                  : Expanded(
                      child: GameBody(
                      players: state.game.getPlayers,
                    ));
            } else {
              return Text(AppLocalizations.of(context)!.game_not_created);
            }
          },
        ),
        //  const EmptyGameBody(),
        actions: InkWell(
            onTap: () {
              AutoRouter.of(context).navigate(const GameOptionsRoute());
            },
            child: const Icon(
              Icons.more_horiz,
              size: gameButtonSize,
            )));
  }
}
