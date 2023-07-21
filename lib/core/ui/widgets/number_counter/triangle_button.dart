import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook1/core/ui/widgets/number_counter/triangle_clipper.dart';

class TriangleButton extends StatelessWidget {
  static const double width = 36;
  static const double height = 40;

  const TriangleButton(
      {super.key, required this.onPress, required this.triangleDirection});

  final Function()? onPress;
  final TriangleDirection triangleDirection;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: ClipPath(
        clipper: TriangleClipper(triangleDirection: triangleDirection),
        child: Container(
          width: width,
          height: height,
          color: AppColors.contentColor,
        ),
      ),
    );
  }
}
