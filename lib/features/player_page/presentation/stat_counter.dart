import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/number_counter/presentation/number_counter.dart';
import 'package:munchkin_notebook1/features/player_page/presentation/stat_text.dart';
import 'package:munchkin_notebook1/features/player_page/stat_controller.dart';

class StatCounter extends StatefulWidget {
  const StatCounter(
      {super.key,
      required this.controller,
      this.editable = true,
      required this.title,
      this.imgPath});

  final StatController controller;
  final bool editable;
  final String title;
  final String? imgPath;

  @override
  State<StatCounter> createState() => _StatCounterState();
}

class _StatCounterState extends State<StatCounter> {
  late int stat;

  @override
  void initState() {
    stat = widget.controller.stat;
    widget.controller.addStatChangedListener((value) {
      setState(() {
        stat = widget.controller.stat;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: StatText(widget.title),
        ),
        NumberCounter(
            decrement: () {
              widget.controller.decrement();
            },
            increment: () {
              widget.controller.increment();
            },
            imgPath: widget.imgPath,
            number: widget.controller.stat),
      ],
    );
  }
}
