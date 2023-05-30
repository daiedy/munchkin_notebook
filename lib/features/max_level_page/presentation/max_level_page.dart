import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:munchkin_notebook1/features/common_text/presentation/common_text.dart';
import 'package:munchkin_notebook1/features/number_counter/presentation/number_counter.dart';
import 'package:munchkin_notebook1/features/max_level_page/max_level_controller.dart';
import 'package:munchkin_notebook1/features/primary_button/presentation/primary_button.dart';
import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@RoutePage()
class MaxLevelPage extends StatefulWidget {
  const MaxLevelPage({super.key});

  @override
  State<MaxLevelPage> createState() => _MaxLevelPageState();
}

class _MaxLevelPageState extends State<MaxLevelPage> {
  final MaxLevelController _maxLevelController = MaxLevelController();
  late int currentMaxLevel;

  @override
  void initState() {
    currentMaxLevel = _maxLevelController.getLevel();
    _maxLevelController.setChangedMaxLevel((maxLevel) {
      setState(() {
        currentMaxLevel = maxLevel;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.max_level_title,
        body: Column(children: [
          NumberCounter(
              decrement: () {
                _maxLevelController.decrementLevel();
              },
              increment: () {
                _maxLevelController.incrementLevel();
              },
              number: currentMaxLevel),
          CommonText(AppLocalizations.of(context)!.create_game_text)
        ]),
        actions: Column(
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.continue_button,
                onPress: () {
                  AutoRouter.of(context)
                      .navigate(SelfCountingRoute(maxLevel: currentMaxLevel));
                }),
            SecondaryButton(
                text: AppLocalizations.of(context)!.back_to_start_button,
                onPress: () {
                  AutoRouter.of(context).pop();
                })
          ],
        ));
  }
}
