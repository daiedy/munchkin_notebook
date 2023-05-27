import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook1/features/base_page/presentation/base_page.dart';
import 'package:munchkin_notebook1/features/game/presentation/bloc/game_bloc.dart';
import 'package:munchkin_notebook1/features/image_widget/presentation/image_widget.dart';
import 'package:munchkin_notebook1/features/primary_button/presentation/primary_button.dart';
import 'package:munchkin_notebook1/features/secondary_button/presentation/secondary_button.dart';
import 'package:munchkin_notebook1/main.dart';
import 'package:munchkin_notebook1/navigation/router.gr.dart';

@RoutePage()
class EnterNamePage extends StatefulWidget {
  const EnterNamePage({super.key});

  @override
  State<EnterNamePage> createState() => _EnterNamePageState();
}

class _EnterNamePageState extends State<EnterNamePage> {
  TextEditingController nameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppLocalizations.of(context)!.enter_name_title,
        body: Column(children: [
          ImageWidget(AppLocalizations.of(context)!.chikibryak),
          Padding(
              padding: const EdgeInsets.only(top: 80),
              child: BlocBuilder(
                  bloc: gameBloc,
                  builder: (context, state) {
                    if (state is GameCreated) {
                      return Form(
                        key: _formKey,
                        child: TextFormField(
                            controller: nameController,
                            maxLength: 10,
                            validator: (value) {
                              if (value == null || value == "") {
                                return AppLocalizations.of(context)!
                                    .enter_text_error;
                              } else if (state.game.hasSameName(value)) {
                                return AppLocalizations.of(context)!
                                    .same_name_error;
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.contentColor,
                                        width: 3)),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.contentColor,
                                        width: 5)),
                                hintText: AppLocalizations.of(context)!
                                    .enter_name_title),
                            textAlign: TextAlign.center,
                            cursorColor: AppColors.contentColor,
                            style: const TextStyle(fontSize: 36)),
                      );
                    } else {
                      return Text(
                          AppLocalizations.of(context)!.game_not_created);
                    }
                  }))
        ]),
        actions: Column(
          children: [
            PrimaryButton(
                text: AppLocalizations.of(context)!.continue_button,
                onPress: () {
                  if (_formKey.currentState!.validate()) {
                    AutoRouter.of(context).navigate(
                        ChooseGenderRoute(playerName: nameController.text));
                  }
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
