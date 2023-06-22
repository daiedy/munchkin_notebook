import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
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
        foregroundColor: AppColors.contentColor,
        textStyle: const TextStyle(fontSize: 18, fontFamily: 'Academy'),
      ),
      onPressed: onPress,
      child: Text(text),
    );
  }
}
