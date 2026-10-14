import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  static const textStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Academy',
  );
  static const double padding = 20;

  const PrimaryButton({
    super.key,
    required this.text,
    this.onPress,
  });

  final String text;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(padding),
        foregroundColor: AppColors.contentColor,
        textStyle: textStyle,
      ),
      onPressed: onPress,
      child: Text(text),
    );
  }
}
