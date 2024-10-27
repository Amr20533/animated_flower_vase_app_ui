import 'package:animated_flower_vase_app_ui/models/vase_model.dart';
import 'package:animated_flower_vase_app_ui/notifiers/home_notifier.dart';
import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/animated_title_view.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/custom_screen_header.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/home_decorated_background.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/home_flower_vase_view.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/home_side_arrows.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/vase_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


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
                    child: Text("Welcome, \nExplore our collection", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.kBrownColor, fontWeight: FontWeight.w500)))),
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
                Expanded(child: Container(
                  width: double.infinity,
                  color: AppColors.kSecondaryColor,
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Scroll down", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kBrownColor),),
                      const SizedBox(height: 6,),
                      const Icon(Icons.arrow_downward, color: AppColors.kBrownColor)
                    ],
                  ),
                )),

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





/*
import 'package:animated_flower_vase_app_ui/models/vase_model.dart';
import 'package:animated_flower_vase_app_ui/notifiers/home_notifier.dart';
import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/animated_title_view.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/custom_screen_header.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/home_decorated_background.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/home_side_arrows.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/vase_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


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
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                  width: double.infinity,
                    color: AppColors.kSecondaryColor,
                    child: Text("Welcome, \nExpolre our collection", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.kBrownColor, fontWeight: FontWeight.w500)))),
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
                      const Align(
                        alignment: Alignment.center,
                        child: HomeSideArrows(),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container(
                  width: double.infinity,
                  color: AppColors.kSecondaryColor,
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Scroll down", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kBrownColor),),
                      const SizedBox(height: 6,),
                      const Icon(Icons.arrow_downward, color: AppColors.kBrownColor)
                    ],
                  ),
                )),

              ],
            ),
            Center(
              child: Transform(
                  alignment: Alignment.center,
                  // Rotate the container 45 degrees (π/4 radians)
                  transform: Matrix4.rotationZ(0.785398), // 45 degrees in radians
                  child:Container(
                    color: Colors.blue,
                    width: size.width * 1.2,
                    height: size.height * 0.4,
                    child: PageView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, page)=> Center(
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationZ(0.785398 * 7),
                          child: const Text(
                            "Rotated",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
              ),
            ),

          ],
        ),
    );
  }
}






* */