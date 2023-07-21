import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/presentation/controllers/gender_controller.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/presentation/widgets/gender_buttons_group.dart';
import 'package:munchkin_notebook1/core/ui/widgets/primary_button.dart';
import 'package:munchkin_notebook1/core/ui/widgets/secondary_button.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

import '../../../../core/ui/constants/app_colors.dart';

@RoutePage()
class ChooseGenderPage extends StatelessWidget {
  static const double plugWidth = 120;
  static const double plugHeight = 160;
  static const double genderHorizontalPadding = 50;

  ChooseGenderPage({super.key, required this.playerName});

  final String playerName;
  final GenderController _genderController = GenderController();

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.choose_gender_title,
        body: Column(
          children: [
            Container(
              width: plugWidth,
              height: plugHeight,
              color: AppColors.stub,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: genderHorizontalPadding),
                child: GenderButtonsGroup(controller: _genderController))
          ],
        ),
        actions: Column(
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.continue_button,
                onPress: () {
                  AutoRouter.of(context).navigate(ChooseColorRoute(
                      playerGender: _genderController.getCurrentGender,
                      playerName: playerName));
                }),
            SecondaryButton(
                text: AppLocalizations.of(context)!.back_to_enter_name_button,
                onPress: () {
                  AutoRouter.of(context).pop(const EnterNameRoute());
                })
          ],
        ));
  }
}
