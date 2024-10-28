import 'package:animated_flower_vase_app_ui/models/vase_model.dart';
import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:animated_flower_vase_app_ui/widgets/cart/cart_quantity_counter.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    super.key,
    required this.flower,
    required this.index,
  });

  final VaseModel flower;
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      height: size.height * 0.14,
      margin: EdgeInsets.only(bottom: size.height * 0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size.width * 0.022),
        border: Border.all(color: AppColors.kPrimaryColor.withOpacity(0.3), width: 1),
        color: Colors.white,
        boxShadow: const [
          // BoxShadow(
          //   offset: Offset(0, -1),
          //   blurRadius: 16,
          //   color: AppColors.kPrimaryColor,
          // ),
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 16,
            color: AppColors.kPrimaryColor,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: size.width * 0.24,
            height: size.height * 0.14,
            alignment: Alignment.center,
            margin: EdgeInsets.all(size.width * 0.03),
            decoration: BoxDecoration(
              color: AppColors.kSecondaryColor,
              borderRadius: BorderRadius.circular(size.width * 0.022),
              // image: DecorationImage(image: AssetImage(flower.image))
            ),
            child: Image.asset(flower.image,  width: size.width * 0.22,height: size.width * 0.22),
          ),
          SizedBox(width: size.width * 0.02,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(flower.title, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kBlackTextColor, fontWeight: FontWeight.w700),),
              Text('\$${flower.price * flower.quantity}', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kActiveColor, fontSize: 14, fontWeight: FontWeight.bold),),
            ],
          ),
          const Spacer(),
          CartQuantityCounter(flower: flower,index: index,),
        ],
      ),
    );
  }
}
