import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook1/core/ui/widgets/parameter_text.dart';
import 'package:munchkin_notebook1/core/ui/widgets/parameter_more.dart';
import 'package:munchkin_notebook1/core/ui/widgets/secondary_button.dart';
import 'package:munchkin_notebook1/main.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@RoutePage()
class GameOptionsPage extends StatelessWidget {
  const GameOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.game_options_title,
        body: Expanded(
          child: BlocBuilder(
              bloc: gameBloc,
              builder: (context, state) {
                if (state is GameCreated) {
                  return Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          ParameterText(
                              "${AppLocalizations.of(context)!.game_code}: 07823"),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(Icons.help_outline),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ParameterMore(
                        body: ParameterText(
                            "${AppLocalizations.of(context)!.players_number}: ${state.game.getPlayers.length}"),
                        onPress: () {
                          AutoRouter.of(context)
                              .navigate(const ListOfPlayersRoute());
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ParameterMore(
                        body: ParameterText(
                            "${AppLocalizations.of(context)!.max_level}: ${state.game.maxLevel}"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ParameterMore(
                        body: ParameterText(state.game.selfCounting
                            ? AppLocalizations.of(context)!.self_counting
                            : AppLocalizations.of(context)!.gamemaster_mode),
                      ),
                    ),
                  ]);
                } else {
                  return Text(AppLocalizations.of(context)!.game_not_created);
                }
              }),
        ),
        actions: Center(
          child: SecondaryButton(
              onPress: () {
                AutoRouter.of(context).pop();
              },
              text: AppLocalizations.of(context)!.back_to_game_button),
        ));
  }
}
