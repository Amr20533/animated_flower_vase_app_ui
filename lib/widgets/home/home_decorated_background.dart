import 'package:flutter/material.dart';

class HomeDecoratedBackground extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = size.width * 0.54;

    return Path()
      ..addOval(Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: radius,
      ))
      ..addRect(Rect.fromLTRB(0, 0, size.width, size.height)) // Adjust rectangle size
      ..fillType = PathFillType.evenOdd;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}