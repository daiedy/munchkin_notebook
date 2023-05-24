import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/game_options_page/presentation/parameter_text.dart';
import 'package:munchkin_notebook1/features/game_page/presentation/game_page.dart';
import 'package:munchkin_notebook1/features/parameter_more/presentation/parameter_more.dart';
import 'package:munchkin_notebook1/features/primary_button/presentation/primary_button.dart';
import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';

@RoutePage()
class GameOptionsPage extends StatefulWidget {
  const GameOptionsPage({super.key});

  @override
  State<GameOptionsPage> createState() => _GameOptionsPageState();
}

class _GameOptionsPageState extends State<GameOptionsPage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.game_options_title,
        body: Column(children: [
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
                  "${AppLocalizations.of(context)!.players_number}: 5"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ParameterMore(
              body: ParameterText(
                  "${AppLocalizations.of(context)!.max_level}: 10"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ParameterMore(
              body: ParameterText(AppLocalizations.of(context)!.self_counting),
            ),
          ),
        ]),
        actions: Center(
          child: SecondaryButton(
              text: AppLocalizations.of(context)!.back_to_game_button),
        ));
  }
}
