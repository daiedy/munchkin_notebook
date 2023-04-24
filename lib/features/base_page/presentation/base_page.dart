import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';

@RoutePage()
class BasePage extends StatelessWidget {
  const BasePage(this.title, this.body, this.actions, {super.key});

  final String title;
  final Column body;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            // color: AppColors.appBackGround,
            decoration: BoxDecoration(
                color: AppColors.appBackGround,
                border: Border.all(color: AppColors.contentColor, width: 10),
                borderRadius: BorderRadius.circular(40)),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      title,
                      style:
                          const TextStyle(fontSize: 32, fontFamily: 'Munchkin'),
                    ),
                  ),
                  body,
                  Column(
                    children: actions,
                  )
                ],
              ),
            )));
  }
}
