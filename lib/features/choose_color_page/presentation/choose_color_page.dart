import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/choose_color_page/color_palette.dart';
import 'package:munchkin_notebook1/features/choose_color_page/color_picker_controller.dart';
import 'package:munchkin_notebook1/features/choose_color_page/presentation/color_picker.dart';
import 'package:munchkin_notebook1/features/primary_button/presentation/primary_button.dart';
import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@RoutePage()
class ChooseColorPage extends StatelessWidget {
  ChooseColorPage({super.key});

  final ColorController _colorController = ColorController(totalColors: 35);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.choose_color_title,
        body: SizedBox(
          height: 550,
          child: ColorPicker(controller: _colorController),
        ),
        actions: Column(
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.continue_button,
                onPress: () {
                  //TODO: сделать роутинг на страницу "Игра"
                }),
            SecondaryButton(
                text: AppLocalizations.of(context)!.back_to_enter_name_button,
                onPress: () {
                  AutoRouter.of(context).navigate(ChooseGenderRoute());
                })
          ],
        ));
  }
}
