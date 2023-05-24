import 'package:flutter/material.dart';

class ParameterMore extends StatelessWidget {
  const ParameterMore({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [body, const Spacer(), const Icon(Icons.more_horiz)],
    );
  }
}
