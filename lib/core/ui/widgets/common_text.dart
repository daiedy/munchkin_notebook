import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  static const double verticalPadding = 20;
  static const textStyle = TextStyle(fontSize: 18);

  const CommonText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: verticalPadding),
      child: Text(text, style: textStyle),
    );
  }
}
