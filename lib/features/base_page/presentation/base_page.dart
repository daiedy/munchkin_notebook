import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';

class BasePage extends StatelessWidget {
  static const double borderPadding = 15;
  static const double borderRadius = 40;
  static const double contentPadding = 20;
  static const double titlePadding = 20;
  static const titleTextStyle = TextStyle(fontSize: 32, fontFamily: 'Munchkin');

  const BasePage(
      {super.key,
      required this.title,
      required this.body,
      required this.actions});

  final String title;
  final Widget body;
  final Widget actions;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: AppColors.contentColor,
        child: Padding(
          padding: const EdgeInsets.all(borderPadding),
          child: Container(
              decoration: BoxDecoration(
                  color: AppColors.appBackGround,
                  borderRadius: BorderRadius.circular(borderRadius)),
              child: Container(
                padding: const EdgeInsets.all(contentPadding),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(titlePadding),
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: titleTextStyle,
                      ),
                    ),
                    body,
                    const Spacer(),
                    actions,
                  ],
                ),
              )),
        ));
  }
}
