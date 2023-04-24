import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:munchkin_notebook1/navigation/router.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

import '../../primary_button/presentation/primary_button.dart';
import '../../secondary_button/presentation/secondary_button.dart';

@RoutePage()
class CreateGamePage extends StatelessWidget {
  const CreateGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        AppLocalizations.of(context)!.create_game_title,
        Column(children: [
          Image.asset(
            AppLocalizations.of(context)!.wizard,
            width: 148,
            height: 160,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Text(AppLocalizations.of(context)!.create_game_text,
                style: const TextStyle(fontSize: 18)),
          )
        ]),
        [
          PrimaryButton(AppLocalizations.of(context)!.create_game_button, () {
            AutoRouter.of(context).navigate(const MaxLevelRoute());
          }),
          SecondaryButton(AppLocalizations.of(context)!.game_exists_button)
        ]);
  }
}
