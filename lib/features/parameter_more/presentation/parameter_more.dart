import 'package:flutter/material.dart';

class ParameterMore extends StatelessWidget {
  const ParameterMore({super.key, required this.body, this.onPress});

  final Widget body;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Row(
        children: [
          body,
          const Spacer(),
          const Icon(
            Icons.more_horiz,
            size: 25,
          )
        ],
      ),
    );
  }
}
