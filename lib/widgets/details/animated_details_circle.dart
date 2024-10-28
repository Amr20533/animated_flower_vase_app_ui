import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:animated_flower_vase_app_ui/widgets/details/details_decorated_background.dart';
import 'package:flutter/material.dart';

class AnimatedCircle extends StatefulWidget {
  const AnimatedCircle({super.key});

  @override
  AnimatedCircleState createState() => AnimatedCircleState();
}

class AnimatedCircleState extends State<AnimatedCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return CustomPaint(
            size: const Size(double.infinity, 300),
            painter: DetailsDecoratedBackground(
              leftOffset: _animation.value * MediaQuery.sizeOf(context).width * 0.31,
              color: AppColors.kSecondaryColor,
            ),
          );
        },
      ),
    );
  }
}

