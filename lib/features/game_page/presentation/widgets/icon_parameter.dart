import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:munchkin_notebook1/core/ui/widgets/parameter_text.dart';

class IconParameter extends StatelessWidget {
  const IconParameter({super.key, required this.iconPath, required this.value});

  final String iconPath;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(iconPath, height: 20),
        const SizedBox(width: 5),
        ParameterText(value.toString()),
      ],
    );
  }
}
