import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/common_text/presentation/common_text.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';
import '../../primary_button/presentation/primary_button.dart';
import '../../secondary_button/presentation/secondary_button.dart';

@RoutePage()
class EnterCodePage extends StatelessWidget {
  const EnterCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.enter_code_title,
        body: Column(children: [
          CommonText(AppLocalizations.of(context)!.enter_code_text)
        ]),
        actions: Column(
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.continue_button,
                onPress: () {}),
            SecondaryButton(
                text: AppLocalizations.of(context)!.back_to_start_button,
                onPress: () {
                  AutoRouter.of(context).navigate(const CreateGameRoute());
                })
          ],
        ));
  }
}
