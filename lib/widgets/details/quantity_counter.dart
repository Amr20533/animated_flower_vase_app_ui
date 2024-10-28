import 'package:animated_flower_vase_app_ui/notifiers/details_notifier.dart';
import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuantityCounter extends StatelessWidget {
  const QuantityCounter({
    super.key, required this.bottomMargin,
  });
  final double bottomMargin;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Consumer<DetailsNotifier>(builder: (context, notifier, _){
      return Container(
          width: size.width * 0.9,
          margin: EdgeInsets.only(bottom: bottomMargin),
          child: Row(

            children: [
              Expanded(child: Container()),
              Row(
                children: [
                  IconButton(
                      onPressed:(){
                        notifier.decrementQuantity();
                      },
                      icon: const Icon(Icons.remove, color: AppColors.kCounterButtonColor,)
                  ),
                  Text('${notifier.quantity}',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kSecBlackCTextColor,fontSize: 20 ,fontWeight: FontWeight.w500),textAlign: TextAlign.center, maxLines: 2, overflow: TextOverflow.ellipsis,),
                  IconButton(
                      onPressed:(){
                        notifier.incrementQuantity();
                      },
                      icon: const Icon(Icons.add, color: AppColors.kCounterButtonColor,)
                  ),
                ],
              )
            ],
          )
      );
    });

  }
}