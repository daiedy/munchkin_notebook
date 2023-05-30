import 'package:flutter/material.dart';

class NumberText extends StatelessWidget {
  const NumberText(this.number, {super.key});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Text(
      number.toString(),
      style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
    );
  }
}
