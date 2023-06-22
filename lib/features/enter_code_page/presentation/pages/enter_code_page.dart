import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/core/ui/widgets/common_text.dart';
import 'package:munchkin_notebook1/features/enter_code_page/presentation/widgets/game_code_input.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';
import '../../../../core/ui/widgets/primary_button.dart';
import '../../../../core/ui/widgets/secondary_button.dart';

@RoutePage()
class EnterCodePage extends StatefulWidget {
  const EnterCodePage({super.key});

  @override
  State<EnterCodePage> createState() => _EnterCodePageState();
}

class _EnterCodePageState extends State<EnterCodePage> {
  final TextEditingController _gameCodeController = TextEditingController();

  @override
  void dispose() {
    _gameCodeController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.enter_code_title,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: GameCodeInput(
              gameCodeController: _gameCodeController,
            ),
          ),
          CommonText(AppLocalizations.of(context)!.enter_code_text)
        ]),
        actions: Column(
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.continue_button,
                onPress: () {
                  AutoRouter.of(context).navigate(const EnterNameRoute());
                }),
            SecondaryButton(
                text: AppLocalizations.of(context)!.back_to_start_button,
                onPress: () {
                  AutoRouter.of(context).navigate(const CreateGameRoute());
                })
          ],
        ));
  }
}
