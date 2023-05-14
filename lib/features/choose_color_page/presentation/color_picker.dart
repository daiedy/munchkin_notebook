import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/choose_color_page/color_picker_controller.dart';
import 'package:munchkin_notebook1/features/choose_color_page/presentation/color_button.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({super.key, required this.controller});

  final ColorController controller;

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  late int _currentColorIndex;

  @override
  void initState() {
    _currentColorIndex = widget.controller.getCurrentColorIndex;
    widget.controller.setColorListener((colorIndex) {
      setState(() {
        _currentColorIndex = colorIndex;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        ColorButton(
          color: widget.controller.getColor(0),
          selected: 0 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(0);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(1),
          selected: 1 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(1);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(2),
          selected: 2 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(2);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(3),
          selected: 3 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(3);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(4),
          selected: 4 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(4);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(5),
          selected: 5 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(5);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(6),
          selected: 6 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(6);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(7),
          selected: 7 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(7);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(8),
          selected: 8 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(8);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(9),
          selected: 9 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(9);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(10),
          selected: 10 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(10);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(11),
          selected: 11 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(11);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(12),
          selected: 12 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(12);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(13),
          selected: 13 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(13);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(14),
          selected: 14 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(14);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(15),
          selected: 15 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(15);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(16),
          selected: 16 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(16);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(17),
          selected: 17 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(17);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(18),
          selected: 18 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(18);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(19),
          selected: 19 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(19);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(20),
          selected: 20 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(20);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(21),
          selected: 21 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(21);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(22),
          selected: 22 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(22);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(23),
          selected: 23 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(23);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(24),
          selected: 24 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(24);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(25),
          selected: 25 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(25);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(26),
          selected: 26 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(26);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(27),
          selected: 27 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(27);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(28),
          selected: 28 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(28);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(29),
          selected: 29 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(29);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(30),
          selected: 30 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(30);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(31),
          selected: 31 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(31);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(32),
          selected: 32 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(32);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(33),
          selected: 33 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(33);
          },
        ),
        ColorButton(
          color: widget.controller.getColor(34),
          selected: 34 == widget.controller.getCurrentColorIndex,
          onTap: () {
            widget.controller.setColor(34);
          },
        ),
      ],
    );
  }
}
