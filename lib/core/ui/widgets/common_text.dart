import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(text, style: const TextStyle(fontSize: 18)),
    );
  }
}
