import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/core/ui/widgets/common_text.dart';
import '../../../../core/ui/constants/app_colors.dart';
import '../../../../navigation/router.gr.dart';
import '../../../../core/ui/widgets/primary_button.dart';
import '../../../../core/ui/widgets/secondary_button.dart';

@RoutePage()
class JoinGamePage extends StatelessWidget {
  const JoinGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.join_game_title,
        body: Column(children: [
          Container(
            width: 120,
            height: 160,
            color: AppColors.stub,
          ),
          CommonText(AppLocalizations.of(context)!.join_game_text)
        ]),
        actions: Column(
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.join_game_button,
                onPress: () {
                  AutoRouter.of(context).navigate(const EnterCodeRoute());
                }),
            SecondaryButton(
                text: AppLocalizations.of(context)!.game_not_created_button,
                onPress: () {
                  AutoRouter.of(context).pop();
                })
          ],
        ));
  }
}
