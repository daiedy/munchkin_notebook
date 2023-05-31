import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';

class BasePage extends StatelessWidget {
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
          padding: const EdgeInsets.all(15),
          child: Container(
              decoration: BoxDecoration(
                  color: AppColors.appBackGround,
                  borderRadius: BorderRadius.circular(40)),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 32, fontFamily: 'Munchkin'),
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
