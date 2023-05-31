import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:munchkin_notebook1/features/game/domain/entities/player.dart';
import 'package:munchkin_notebook1/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook1/features/number_text/presentation/number_text.dart';
import 'package:munchkin_notebook1/features/player_page/presentation/stat_counter.dart';
import 'package:munchkin_notebook1/features/player_page/presentation/stat_text.dart';
import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';
import 'package:munchkin_notebook1/main.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@RoutePage()
class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key, required this.player});

  final Player player;

  // final StatController
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: player.name,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: BlocBuilder(
              bloc: gameBloc,
              builder: (context, state) {
                if (state is GameCreated) {
                  return StatCounter(
                    imgPath: AppLocalizations.of(context)!.level_icon,
                    title: AppLocalizations.of(context)!.level,
                    increment: () {
                      gameBloc.add(ChangePlayerLevel(
                          playerId: player.id,
                          level: state.game.getPlayer(player.id).level + 1));
                    },
                    decrement: () {
                      gameBloc.add(ChangePlayerLevel(
                          playerId: player.id,
                          level: state.game.getPlayer(player.id).level - 1));
                    },
                    number: player.level,
                  );
                } else {
                  return Container();
                }
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: BlocBuilder(
              bloc: gameBloc,
              builder: (context, state) {
                if (state is GameCreated) {
                  return StatCounter(
                    imgPath: AppLocalizations.of(context)!.bonus_icon,
                    title: AppLocalizations.of(context)!.bonus,
                    increment: () {
                      gameBloc.add(ChangePlayerBonus(
                          playerId: player.id,
                          bonus: state.game.getPlayer(player.id).bonus + 1));
                    },
                    decrement: () {
                      gameBloc.add(ChangePlayerBonus(
                          playerId: player.id,
                          bonus: state.game.getPlayer(player.id).bonus - 1));
                    },
                    number: player.bonus,
                  );
                } else {
                  return Container();
                }
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: StatText(
                  AppLocalizations.of(context)!.strength,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SvgPicture.asset(
                        AppLocalizations.of(context)!.strength_icon),
                  ),
                  BlocBuilder(
                      bloc: gameBloc,
                      builder: (context, state) {
                        if (state is GameCreated) {
                          return NumberText(player.strength);
                        } else {
                          return Container();
                        }
                      }),
                ],
              ),
            ],
          ),
        )
      ]),
      actions: SecondaryButton(
        text: AppLocalizations.of(context)!.back_to_game_button,
        onPress: () {
          AutoRouter.of(context).replaceAll([const GameRoute()]);
        },
      ),
    );
  }
}
