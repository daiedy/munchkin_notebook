import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/choose_color_page/color_palette.dart';

class ColorController {
  ColorController({required totalColors, initialColorIndex = 0})
      : _colorPalette = ColorPalette(totalColors),
        _currentColorIndex = initialColorIndex;

  final ColorPalette _colorPalette;
  int _currentColorIndex;

  Color get getCurrentColor => _colorPalette.getColor(_currentColorIndex);
  ColorPalette get getColorPalette => _colorPalette;
  int get getCurrentColorIndex => _currentColorIndex;
  Function(int)? _onColorChanged;

  Color getColor(int paletteIndex) => _colorPalette.getColor(paletteIndex);

  void setColorListener(Function(int) onColorChanged) {
    _onColorChanged = onColorChanged;
  }

  void setColor(int paletteIndex) {
    _currentColorIndex = paletteIndex;
    _onColorChanged?.call(paletteIndex);
  }
}
