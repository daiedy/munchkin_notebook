// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:munchkin_notebook1/features/common_text/presentation/common_text.dart';
// import 'package:munchkin_notebook1/features/primary_button/presentation/primary_button.dart';
// import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';
// import 'package:munchkin_notebook1/navigation/router.gr.dart';

// @RoutePage()
// class SelfCountingPage extends StatelessWidget {
//   const SelfCountingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BasePage(
//         AppLocalizations.of(context)!.self_counting_title,
//         Column(children: [
//           CommonText(AppLocalizations.of(context)!.self_counting_text)
//         ]),
//         [
//           PrimaryButton(AppLocalizations.of(context)!.be_gamemaster_button, () {
//             AutoRouter.of(context).navigate(const JoinGameRoute());
//           }),
//           SecondaryButton(AppLocalizations.of(context)!.self_counting_button,
//               () {
//             AutoRouter.of(context).navigate(const MaxLevelRoute());
//           })
//         ]);
//   }
// }

// TODO: Сделать страничку self_counting
