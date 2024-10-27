import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';

class DetailsDecoratedBackground extends CustomPainter {
final double leftOffset;
final Color color;

DetailsDecoratedBackground({required this.leftOffset, required this.color});

@override
void paint(Canvas canvas, Size size) {
  double radius = size.width * 0.56;

  Paint backgroundPaint = Paint()..color = AppColors.kPrimaryColor;
  canvas.drawRect(Rect.fromLTRB(0, 0, size.width, size.height), backgroundPaint);

  Paint circlePaint = Paint()..color = color;
  Path path = Path()
    ..addOval(Rect.fromCircle(
      center: Offset(size.width / 2 + leftOffset, size.height / 2),
      radius: radius,
    ));

  canvas.drawPath(path, circlePaint);
}

@override
bool shouldRepaint(DetailsDecoratedBackground oldDelegate) {
  return leftOffset != oldDelegate.leftOffset || color != oldDelegate.color;
}
}