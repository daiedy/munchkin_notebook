import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:munchkin_notebook1/features/image_widget/presentation/image_widget.dart';
import 'package:munchkin_notebook1/features/primary_button/presentation/primary_button.dart';
import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@RoutePage()
class EnterNamePage extends StatefulWidget {
  const EnterNamePage({super.key});

  @override
  State<EnterNamePage> createState() => _EnterNamePageState();
}

class _EnterNamePageState extends State<EnterNamePage> {
  String name = '';
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    nameController.addListener(setName);
  }

  void setName() {
    setState(() {
      name = nameController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.enter_name_title,
        body: Column(children: [
          ImageWidget(AppLocalizations.of(context)!.chikibryak),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.contentColor)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.contentColor)),
                    hintText: AppLocalizations.of(context)!.enter_name_title),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30)),
          )
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
