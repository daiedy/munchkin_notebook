// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
// import 'package:munchkin_notebook1/features/common_text/presentation/common_text.dart';
// import 'package:munchkin_notebook1/features/primary_button/presentation/primary_button.dart';
// import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';
// import 'package:munchkin_notebook1/navigation/router.gr.dart';

// @RoutePage()
// class MaxLevelPage extends StatelessWidget {
//   const MaxLevelPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BasePage(
//         AppLocalizations.of(context)!.max_level_title,
//         Column(children: [
//           CommonText(AppLocalizations.of(context)!.create_game_text)
//         ]),
//         Column(
//           children: [
//             PrimaryButton(AppLocalizations.of(context)!.continue_button, () {
//               AutoRouter.of(context).navigate(const SelfCountingRoute());
//             }),
//             SecondaryButton(AppLocalizations.of(context)!.back_to_start_button,
//                 () {
//               AutoRouter.of(context).navigate(const CreateGameRoute());
//             })
//           ],
//         ));
//   }
// }

// TODO: Сделать страницу MaxLevel
