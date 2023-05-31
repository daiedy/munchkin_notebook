import 'package:flutter/material.dart';
import 'package:munchkin_notebook1/core/ui/constants/app_colors.dart';
import 'package:munchkin_notebook1/features/max_level_page/presentation/triangle_container.dart';
import 'package:munchkin_notebook1/features/number_counter/presentation/triangle_clipper.dart';

class TriangleButton extends StatelessWidget {
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
          width: 36,
          height: 40,
          color: AppColors.contentColor,
        ),
      ),
    );
  }
}
