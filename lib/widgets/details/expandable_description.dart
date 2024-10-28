import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class ExpandableDescription extends StatelessWidget {
  const ExpandableDescription({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width * 0.9,
      margin: EdgeInsets.only(bottom: size.height * 0.01),
      child: ExpandableText(
        title,
        collapseText: "See less",
        expandText: "See more",
        maxLines: 2,
        animation: true,
        animationCurve: Curves.easeInCubic,
        animationDuration: const Duration(milliseconds: 300),
        style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16),),
    );
  }
}
