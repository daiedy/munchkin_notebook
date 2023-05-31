import 'package:flutter/material.dart';

class StatText extends StatelessWidget {
  const StatText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
