import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:munchkin_notebook1/core/ui/widgets/parameter_text.dart';

class IconParameter extends StatelessWidget {
  static const double iconHeight = 20;
  static const double padding = 5;

  const IconParameter({super.key, required this.iconPath, required this.value});

  final String iconPath;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(iconPath, height: iconHeight),
        const SizedBox(width: padding),
        ParameterText(value.toString()),
      ],
    );
  }
}
