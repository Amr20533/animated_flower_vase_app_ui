import 'package:animated_flower_vase_app_ui/models/vase_model.dart';
import 'package:animated_flower_vase_app_ui/notifiers/home_notifier.dart';
import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VaseIndicator extends StatelessWidget {
  const VaseIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Consumer<HomeNotifier>(builder: (context, notifier, _){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(VaseModel.flowerVase.length, (index) {
          bool selected = index == notifier.currentVase;
          return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: selected ? size.width * 0.066 : 6,
          height: 6,
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
              color: selected ? AppColors.kActiveColor : AppColors.kInactiveColor,
              borderRadius: BorderRadius.circular(6)
          ),

        );
        }),
      );
    });
  }
}
