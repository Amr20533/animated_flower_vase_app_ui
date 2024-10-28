import 'package:animated_flower_vase_app_ui/notifiers/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeSideArrows extends StatelessWidget {
  const HomeSideArrows({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Consumer<HomeNotifier>(builder: (context, notifier, _){
      return Container(
        height: size.height * 0.13,
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        margin: EdgeInsets.only(top: size.height * 0.11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              notifier.previousPage();
            }, icon: Image.asset("assets/icons/arrow_left.png")),
            IconButton(onPressed: (){
              notifier.nextPage();
            }, icon: Image.asset("assets/icons/arrow_right.png")),
          ],
        ),
      );
    });

  }
}
