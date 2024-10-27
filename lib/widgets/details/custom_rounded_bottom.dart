import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      height: size.height * 0.08,
      padding: const EdgeInsets.only(bottom: 16, left: 26, right: 26),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          elevation: const WidgetStatePropertyAll(1),
          backgroundColor: const WidgetStatePropertyAll(Colors.white),
          overlayColor: WidgetStatePropertyAll(AppColors.kPrimaryColor.withOpacity(0.9)),
          shadowColor: const WidgetStatePropertyAll(AppColors.kWhiteColor),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.kBlackTextColor),
        ),
      ),
    );
  }
}
