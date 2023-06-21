import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(this.path, {super.key});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      // fit: BoxFit.fill,
      height: 160,
    );
  }
}
