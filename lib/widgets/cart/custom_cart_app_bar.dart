import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar customCartAppBar(BuildContext context, Size size) {
  return AppBar(
    leading: GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Padding(
        padding: EdgeInsets.only(left: size.width * 0.039),
        child: SvgPicture.asset("assets/icons/arrow_left_2.svg"),
      ),
    ),
    title: Text('My Cart', style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20, fontWeight: FontWeight.w700),),
    centerTitle: true,
    backgroundColor: Colors.transparent,
  );
}
