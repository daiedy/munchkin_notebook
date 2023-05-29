import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/parameter_text/parameter_text.dart';

class IconParameter extends StatelessWidget {
  const IconParameter({super.key, required this.iconPath, required this.value});

  final String iconPath;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(iconPath),
        const SizedBox(width: 5),
        ParameterText(value.toString()),
      ],
    );
  }
}
