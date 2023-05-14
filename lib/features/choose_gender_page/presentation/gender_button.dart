import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/gender.dart';
import 'package:munchkin_notebook1/features/choose_gender_page/gender_controller.dart';

class GenderButton extends StatefulWidget {
  const GenderButton(
      {super.key,
      required this.gender,
      required this.logoPath,
      required this.controller});

  final Gender gender;
  final String logoPath;
  final GenderController controller;

  @override
  State<GenderButton> createState() => _GenderButtonState();
}

class _GenderButtonState extends State<GenderButton> {
  late Gender _currentGender;

  @override
  void initState() {
    _currentGender = widget.controller.getCurrentGender;
    widget.controller.addGenderListener((Gender gender) {
      setState(() {
        _currentGender = widget.controller.getCurrentGender;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.controller.setGender(widget.gender);
      },
      child: Opacity(
        opacity: _currentGender == widget.gender ? 1 : 0.5,
        child: Image.asset(widget.logoPath, color: AppColors.contentColor),
      ),
    );
  }
}
