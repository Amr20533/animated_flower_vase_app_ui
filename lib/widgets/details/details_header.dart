import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.07, left: 22),
      child: Row(
        children: [
          GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: SvgPicture.asset("assets/icons/arrow_left_2.svg")),
          SizedBox(width: size.width * 0.02,),
          Text("Go back",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.kBrownColor, fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
