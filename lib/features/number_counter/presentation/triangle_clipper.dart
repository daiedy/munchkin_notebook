import 'package:flutter/material.dart';

enum TriangleDirection { right, left }

class TriangleClipper extends CustomClipper<Path> {
  TriangleClipper({required this.triangleDirection});

  TriangleDirection triangleDirection;

  @override
  Path getClip(Size size) {
    final path = Path();
    switch (triangleDirection) {
      case TriangleDirection.left:
        path.moveTo(size.width, 0);
        path.lineTo(0, size.height / 2);
        path.lineTo(size.width, size.height);
        path.lineTo(size.width, 0);
        break;
      case TriangleDirection.right:
        path.lineTo(size.width, size.height / 2);
        path.lineTo(0, size.height);
        path.lineTo(0, 0);
    }
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
