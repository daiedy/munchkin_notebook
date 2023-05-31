import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';

class GenderButton extends StatelessWidget {
  const GenderButton(
      {super.key,
      required this.logoPath,
      required this.selected,
      required this.onTap});

  final String logoPath;
  final bool selected;
  final Function() onTap;

  // @override
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Opacity(
        opacity: selected ? 1 : 0.5,
        child: SvgPicture.asset(logoPath),
      ),
    );
  }
}
