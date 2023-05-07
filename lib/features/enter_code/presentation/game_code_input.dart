import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';
import 'package:pinput/pinput.dart';

class GameCodeInput extends StatelessWidget {
  const GameCodeInput({super.key, required this.gameCodeController});

  final TextEditingController gameCodeController;

  static const double inputWidth = 56;
  static const double inputHeight = 56;
  static const double underlineWidth = 3;

  static const _focusedPinTheme = PinTheme(
      width: inputWidth,
      height: inputHeight,
      textStyle: TextStyle(fontSize: 48, color: AppColors.contentColor));
  static const _defaultPinTheme = PinTheme(
      width: inputWidth,
      height: inputHeight,
      textStyle: TextStyle(fontSize: 48, color: AppColors.contentColor),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: underlineWidth))));
  static final _cursor = Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        width: inputWidth,
        height: underlineWidth,
        decoration: const BoxDecoration(
          color: AppColors.contentColor,
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: gameCodeController,
      cursor: _cursor,
      defaultPinTheme: _defaultPinTheme,
      focusedPinTheme: _focusedPinTheme,
      length: 5,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
