import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:animated_flower_vase_app_ui/widgets/details/animated_details_circle.dart';
import 'package:animated_flower_vase_app_ui/widgets/details/custom_rounded_bottom.dart';
import 'package:animated_flower_vase_app_ui/widgets/home/custom_screen_header.dart';
import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.vaseModel});
  final dynamic vaseModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: Stack(
        children: [
          Stack(
            children: [
              const AnimatedCircle(),
              Container(
                padding: EdgeInsets.only(bottom: size.height * 0.13),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          // width: size.width * 0.6,
                          // height: size.height * 0.26,
                          margin: EdgeInsets.only(top: size.height * 0.1),
                          child: Image.asset(vaseModel.image, width: size.width * 0.8,height: size.width * 0.8,)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              width: size.width,
              child: Column(
                children: [
                  const CustomScreenHeader(color: AppColors.kPrimaryColor,),
                  SizedBox(height: size.height * 0.03,),
                  SizedBox(
                    width: size.width * 0.7,
                    child: Text(vaseModel.title,
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.kBrownColor, fontWeight: FontWeight.w700),textAlign: TextAlign.center, maxLines: 2, overflow: TextOverflow.ellipsis,),
                  )
                ],
              ),
            ),
          ),

          Positioned(
              bottom: size.height * 0.14,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                            width: size.width * 0.9,color: Colors.blue,
                            alignment: Alignment.center,
                            child: Center(child: Text(vaseModel.description, style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),)),
                          ),
              )),
          const Align(
              alignment: Alignment.bottomCenter,
              child: CustomRoundedButton(title: "Add to cart",))



          ],
      )
    );
  }
}

