import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/gender.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/gender_controller.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/presentation/gender_button.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/presentation/gender_buttons_group.dart';
import 'package:munchkin_notebook1/features/primary_button/presentation/primary_button.dart';
import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

import '../../../core/ui/constants/app_colors.dart';

@RoutePage()
class ChooseGenderPage extends StatelessWidget {
  ChooseGenderPage({super.key});

  final GenderController _genderController = GenderController();

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.choose_gender_title,
        body: Column(
          children: [
            Container(
              width: 120,
              height: 160,
              color: AppColors.stub,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: GenderButtonsGroup(controller: _genderController))
          ],
        ),
        actions: Column(
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.continue_button,
                onPress: () {
                  //TODO: сделать роутинг на страницу "Выберите цвет"
                }),
            SecondaryButton(
                text: AppLocalizations.of(context)!.back_to_enter_name_button,
                onPress: () {
                  AutoRouter.of(context).navigate(const EnterNameRoute());
                })
          ],
        ));
  }
}
