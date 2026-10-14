import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(this.path, {super.key});

  static const double height = 160;

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: height,
    );
  }
}
