import 'package:animated_flower_vase_app_ui/models/vase_model.dart';
import 'package:animated_flower_vase_app_ui/notifiers/cart_notifier.dart';
import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartQuantityCounter extends StatelessWidget {
  const CartQuantityCounter({
    super.key,
    required this.flower,
    required this.index,
  });

  final VaseModel flower;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<CartNotifier>(builder: (context, notifier, _){
      return Padding(
        padding: const EdgeInsets.only(right: 14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap:(){
                  notifier.decrementQuantity(index);
                },
                child: const Icon(Icons.remove, color: AppColors.kCounterButtonColor,size: 20,)
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text('${flower.quantity}',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.kSecBlackCTextColor,fontSize: 16 ,fontWeight: FontWeight.w600),textAlign: TextAlign.center, maxLines: 2, overflow: TextOverflow.ellipsis,),
            ),
            InkWell(
                onTap:(){
                  notifier.incrementQuantity(index);
                },
                child: const Icon(Icons.add, color: AppColors.kCounterButtonColor,size: 20,)
            ),
          ],
        ),
      );
    });
  }
}
