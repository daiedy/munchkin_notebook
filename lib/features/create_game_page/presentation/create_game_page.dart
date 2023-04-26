import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:munchkin_notebook1/features/image_widget/presentation/image_widget.dart';
import '../../../navigation/router.gr.dart';
import '../../common_text/presentation/common_text.dart';
import '../../primary_button/presentation/primary_button.dart';
import '../../secondary_button/presentation/secondary_button.dart';

@RoutePage()
class CreateGamePage extends StatelessWidget {
  const CreateGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.create_game_title,
        body: Column(children: [
          ImageWidget(AppLocalizations.of(context)!.wizard),
          CommonText(
            AppLocalizations.of(context)!.create_game_text,
          )
        ]),
        actions: Column(
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.create_game_button,
                onPress: () {
                  AutoRouter.of(context).navigate(const MaxLevelRoute());
                }),
            SecondaryButton(
                text: AppLocalizations.of(context)!.game_exists_button,
                onPress: () {
                  AutoRouter.of(context).navigate(const JoinGameRoute());
                })
          ],
        ));
  }
}
