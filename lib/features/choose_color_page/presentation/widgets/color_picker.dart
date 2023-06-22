import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/features/choose_color_page/presentation/controllers/color_picker_controller.dart';
import 'package:munchkin_notebook1/features/choose_color_page/presentation/widgets/color_button.dart';

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
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: widget.controller.getTotalColors,
        itemBuilder: (context, index) => ColorButton(
              color: widget.controller.getColor(index),
              selected: index == _currentColorIndex,
              onTap: () {
                widget.controller.setColor(index);
              },
            ));
  }
}
