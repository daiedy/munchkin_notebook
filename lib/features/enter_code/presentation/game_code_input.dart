import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';
import 'package:pinput/pinput.dart';

class GameCodeInput extends StatefulWidget {
  const GameCodeInput({super.key, required this.gameCodeController});

  final TextEditingController gameCodeController;

  @override
  State<GameCodeInput> createState() => _GameCodeInputState();
}

class _GameCodeInputState extends State<GameCodeInput> {
  @override
  Widget build(BuildContext context) {
    const double inputWidth = 56;
    const double inputHeight = 56;
    const double underlineWidth = 3;

    const focusedPinTheme = PinTheme(
        width: inputWidth,
        height: inputHeight,
        textStyle: TextStyle(fontSize: 48, color: AppColors.contentColor));

    const defaultPinTheme = PinTheme(
        width: inputWidth,
        height: inputHeight,
        textStyle: TextStyle(fontSize: 48, color: AppColors.contentColor),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: underlineWidth))));

    final cursor = Column(
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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Pinput(
        controller: widget.gameCodeController,
        cursor: cursor,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        length: 5,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
    );
  }
}
