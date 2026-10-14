import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  static const double iconSize = 35;

  const ColorButton(
      {super.key,
      required this.color,
      this.selected = false,
      required this.onTap});

  final Color color;
  final bool selected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          child: selected
              ? const Icon(
                  Icons.check,
                  size: iconSize,
                )
              : null),
    );
  }
}
