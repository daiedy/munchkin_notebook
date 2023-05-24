import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:munchkin_notebook1/features/common_text/presentation/common_text.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@RoutePage()
class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.game_title,
        body: Column(
          children: [
            Container(
              width: 120,
              height: 160,
              color: AppColors.stub,
            ),
            CommonText(AppLocalizations.of(context)!.game_text)
          ],
        ),
        actions: InkWell(
            onTap: () {
              AutoRouter.of(context).navigate(const GameOptionsRoute());
            },
            child: const Icon(
              Icons.more_horiz,
              size: 50,
            )));
  }
}
