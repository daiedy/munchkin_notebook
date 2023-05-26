import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/common_text/presentation/common_text.dart';
import 'package:munchkin_notebook1/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook1/features/primary_button/presentation/primary_button.dart';
import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';
import 'package:munchkin_notebook1/main.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@RoutePage()
class SelfCountingPage extends StatelessWidget {
  const SelfCountingPage({super.key, required this.maxLevel});

  final int maxLevel;

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.self_counting_title,
        body: Column(children: [
          Container(
            width: 120,
            height: 160,
            color: AppColors.stub,
          ),
          CommonText(AppLocalizations.of(context)!.self_counting_text)
        ]),
        actions: Column(
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.be_gamemaster_button,
                onPress: () {
                  gameBloc.add(CreateGame(maxLevel, false));
                  AutoRouter.of(context).navigate(const EnterNameRoute());
                }),
            PrimaryButton(
                text: AppLocalizations.of(context)!.self_counting_button,
                onPress: () {
                  gameBloc.add(CreateGame(maxLevel, true));
                  AutoRouter.of(context).navigate(const EnterNameRoute());
                }),
            SecondaryButton(
              text: AppLocalizations.of(context)!.back_to_max_level_button,
              onPress: () {
                AutoRouter.of(context).pop();
              },
            )
          ],
        ));
  }
}
