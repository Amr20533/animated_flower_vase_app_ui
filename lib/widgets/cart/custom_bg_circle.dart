import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBgCircle extends StatelessWidget {
  const CustomBgCircle({
    super.key, this.color = AppColors.kPrimaryColor,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
