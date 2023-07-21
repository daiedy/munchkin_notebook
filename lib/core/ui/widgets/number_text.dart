import 'package:flutter/material.dart';

class NumberText extends StatelessWidget {
  static const textStyle = TextStyle(fontSize: 48, fontWeight: FontWeight.bold);

  const NumberText(this.number, {super.key});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Text(
      number.toString(),
      style: textStyle,
    );
  }
}
