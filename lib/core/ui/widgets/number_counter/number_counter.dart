import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:munchkin_notebook1/core/ui/widgets/number_counter/triangle_button.dart';
import 'package:munchkin_notebook1/core/ui/widgets/number_counter/triangle_clipper.dart';
import 'package:munchkin_notebook1/core/ui/widgets/number_text.dart';

class NumberCounter extends StatelessWidget {
  static const double imageLeftPadding = 15;
  static const double numberHorizontalPadding = 15;

  const NumberCounter(
      {super.key,
      required this.decrement,
      required this.increment,
      required this.number,
      this.imgPath});

  final Function()? decrement;
  final Function()? increment;
  final int number;
  final String? imgPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TriangleButton(
            onPress: decrement, triangleDirection: TriangleDirection.left),
        imgPath != null
            ? Padding(
                padding: const EdgeInsets.only(left: imageLeftPadding),
                child: SvgPicture.asset(imgPath!),
              )
            : Container(),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: numberHorizontalPadding),
          child: NumberText(number),
        ),
        TriangleButton(
            onPress: increment, triangleDirection: TriangleDirection.right),
      ],
    );
  }
}
