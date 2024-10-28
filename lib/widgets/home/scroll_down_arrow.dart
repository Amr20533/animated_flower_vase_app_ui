import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollDownArrow extends StatelessWidget {
  const ScrollDownArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.kSecondaryColor,
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("Scroll down", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kBrownColor),),
          const SizedBox(height: 6,),
          SvgPicture.asset("assets/icons/arrow_down.svg")
        ],
      ),
    );
  }
}
