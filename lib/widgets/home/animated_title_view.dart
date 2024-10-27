import 'package:animated_flower_vase_app_ui/models/vase_model.dart';
import 'package:animated_flower_vase_app_ui/notifiers/home_notifier.dart';
import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedTitleView extends StatelessWidget {
  const AnimatedTitleView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Consumer<HomeNotifier>(builder: (context, notifier, _){
      return SizedBox(
        height: size.height * 0.04,
        child: PageView.builder(
          controller: notifier.pageController,
          onPageChanged: (index) {
            notifier.currentVase = index;
          },
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: VaseModel.flowerVase.length,
          itemBuilder: (context, index) {
            VaseModel flower = VaseModel.flowerVase[index];
            return AnimatedOpacity(
              opacity: notifier.currentVase == index ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: Center(
                child: Text(
                  flower.title,
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: AppColors.kBrownColor,fontWeight: FontWeight.w500, fontSize: 24),
                ),
              ),
            );
          },),
      );
    });
  }
}
