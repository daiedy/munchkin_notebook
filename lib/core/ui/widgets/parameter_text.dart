import 'package:flutter/material.dart';

class ParameterText extends StatelessWidget {
  static const double fontSize = 20;
  static const textStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize);

  const ParameterText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
