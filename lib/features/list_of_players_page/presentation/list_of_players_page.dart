import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:munchkin_notebook1/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook1/features/parameter_more/presentation/parameter_more.dart';
import 'package:munchkin_notebook1/features/parameter_text/parameter_text.dart';
import 'package:munchkin_notebook1/features/primary_button/presentation/primary_button.dart';
import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';
import 'package:munchkin_notebook1/main.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@RoutePage()
class ListOfPlayersPage extends StatelessWidget {
  const ListOfPlayersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.list_of_players_title,
        body: Expanded(
            child: BlocBuilder(
                bloc: gameBloc,
                builder: (context, state) {
                  if (state is GameCreated) {
                    return Column(
                        children: state.game.getPlayers
                            .map((player) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: ParameterMore(
                                    body: ParameterText(player.name))))
                            .toList());
                  } else {
                    return Text(AppLocalizations.of(context)!.game_not_created);
                  }
                })),
        actions: Column(
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.continue_button,
                onPress: () {
                  AutoRouter.of(context).navigate(const EnterNameRoute());
                }),
            SecondaryButton(
                text: AppLocalizations.of(context)!.back_to_game_options_button,
                onPress: () {
                  AutoRouter.of(context).pop();
                })
          ],
        ));
  }
}
