import 'package:flutter/material.dart';

import '../../../../core/ui/constants/app_colors.dart';

class TriangleContainer extends StatelessWidget {
  const TriangleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 40,
      color: AppColors.contentColor,
    );
  }
}
