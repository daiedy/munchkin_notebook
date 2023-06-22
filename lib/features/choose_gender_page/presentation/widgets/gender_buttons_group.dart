import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/presentation/controllers/gender_controller.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/presentation/widgets/gender_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../controllers/gender.dart';

class GenderButtonsGroup extends StatefulWidget {
  const GenderButtonsGroup({super.key, required this.controller});

  final GenderController controller;

  @override
  State<GenderButtonsGroup> createState() => _GenderButtonsGroupState();
}

class _GenderButtonsGroupState extends State<GenderButtonsGroup> {
  late Gender _currentGender;

  @override
  void initState() {
    _currentGender = widget.controller.getCurrentGender;
    widget.controller.setGenderListener((Gender gender) {
      setState(() {
        _currentGender = gender;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: GenderButton(
            logoPath: AppLocalizations.of(context)!.maleLogo,
            selected: _currentGender == Gender.male,
            onTap: () {
              widget.controller.setGender(Gender.male);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: GenderButton(
            logoPath: AppLocalizations.of(context)!.femaleLogo,
            selected: _currentGender == Gender.female,
            onTap: () {
              widget.controller.setGender(Gender.female);
            },
          ),
        ),
      ],
    );
  }
}
