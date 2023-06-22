import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/core/ui/widgets/number_counter/number_counter.dart';
import 'package:munchkin_notebook1/features/player_page/presentation/widgets/stat_text.dart';

class StatCounter extends StatelessWidget {
  const StatCounter(
      {super.key,
      required this.title,
      this.imgPath,
      required this.decrement,
      required this.increment,
      required this.number});

  final String title;
  final String? imgPath;
  final Function() decrement;
  final Function() increment;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: StatText(title),
        ),
        NumberCounter(
            decrement: decrement,
            increment: increment,
            imgPath: imgPath,
            number: number),
      ],
    );
  }
}
