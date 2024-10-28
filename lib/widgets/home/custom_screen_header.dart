import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:animated_flower_vase_app_ui/utils/transitions/fade_transition_route.dart';
import 'package:animated_flower_vase_app_ui/views/cart_screen.dart';
import 'package:flutter/material.dart';

class CustomScreenHeader extends StatelessWidget {
  const CustomScreenHeader({
    super.key,
    this.color = AppColors.kSecondaryColor,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      color: color,
      padding: EdgeInsets.only(top: size.height * 0.07, left: size.width * 0.06, right: size.width * 0.06),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
            },
            child: Center(child: Text("Search", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.kBlackTextColor))),
          ),
          Text("EOSty", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.kBlackTextColor,fontSize: 20, fontWeight: FontWeight.w700)),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                fadeTransitionRoute(const CartScreen()),
              );
            },
            child: Text("Cart", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.kBlackTextColor)),
          ),
        ],
      ),
    );
  }
}
