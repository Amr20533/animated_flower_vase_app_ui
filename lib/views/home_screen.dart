import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/animated_title_view.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/custom_screen_header.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/home_decorated_background.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/home_flower_vase_view.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/home_side_arrows.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/scroll_down_arrow.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/vase_indicator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
        body:Stack(
          children: [
            Column(
              children: [
                const CustomScreenHeader(),
                Expanded(child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.06, vertical: size.height * 0.035),
                  width: double.infinity,
                    color: AppColors.kSecondaryColor,
                    child: Text("Welcome, \nExplore our collection", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.kBrownColor, fontWeight: FontWeight.w600)))),
                Expanded(
                  flex: 4,
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: HomeDecoratedBackground(),
                        child: Container(
                          color: AppColors.kSecondaryColor,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: size.height * 0.13),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const AnimatedTitleView(),
                              SizedBox(height: size.height * 0.02,),
                              const VaseIndicator()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(child: ScrollDownArrow()),

              ],
            ),
            const HomeFlowerVaseView(),
            const Align(
              alignment: Alignment.center,
              child: HomeSideArrows(),
            ),

          ],
        ),
    );
  }
}
