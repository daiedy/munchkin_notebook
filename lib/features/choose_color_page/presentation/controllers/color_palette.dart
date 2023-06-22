import 'dart:math' as math;
import 'package:flutter/material.dart';

class ColorPalette {
  final int totalColors;
  final List<Color> _colors;

  ColorPalette(this.totalColors) : _colors = _generateColors(totalColors);

  List<Color> get getColors => _colors;

  Color getColor(int index) => _colors[index];

  int? getColorIndex(Color color) => _colors.indexOf(color);

  static List<Color> _generateColors(int count) {
    final List<Color> colors = [];

    final double goldenRatioConjugate = (math.sqrt(5) - 1) / 2;

    for (int i = 0; i < count; i++) {
      final double hue = (i * goldenRatioConjugate) % 1;
      const double saturation = 0.5;
      const double value = 0.95;

      final Color color =
          HSVColor.fromAHSV(1.0, hue * 360, saturation, value).toColor();
      colors.add(color);
    }

    return colors;
  }
}
