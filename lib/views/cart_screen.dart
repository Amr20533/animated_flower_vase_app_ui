import 'package:animated_flower_vase_app_ui/models/vase_model.dart';
import 'package:animated_flower_vase_app_ui/utils/themes/app_colors.dart';
import 'package:animated_flower_vase_app_ui/widgets/cart/cart_card.dart';
import 'package:animated_flower_vase_app_ui/widgets/cart/custom_bg_circle.dart';
import 'package:animated_flower_vase_app_ui/widgets/cart/custom_cart_app_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationY1;
  late Animation<double> _animationX2;
  late Animation<double> _animationY2;

  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    _addItems();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..forward();

    _animationY1 = Tween<double>(begin: 0.5, end: 0.3).animate(_controller);

    _animationX2 = Tween<double>(begin: 0.5, end: 0.3).animate(_controller);
    _animationY2 = Tween<double>(begin: 0.5, end: 0.08).animate(_controller);

    _controller.forward();
  }

  void _addItems() async {
    for (int i = 0; i < VaseModel.flowerVase.length; i++) {
      await Future.delayed(Duration(milliseconds: 200 * i));
      _listKey.currentState?.insertItem(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: customCartAppBar(context, size),

      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Stack(
                children: [
                  Positioned(
                    top: size.height * _animationY1.value,
                    child: const CustomBgCircle(),
                  ),
                  Positioned(
                    top: size.height * _animationY2.value,
                    left: size.width * _animationX2.value,
                    child: const CustomBgCircle(color: AppColors.kSecondaryColor,),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
            child: Column(
              children: [
                AnimatedList(
                  key: _listKey,
                  initialItemCount: 0,
                  shrinkWrap: true,
                  itemBuilder: (context, index, animation) {
                    return _buildItem(index, animation, size);
                  },
                ),
              ],
            ),
          )

        ],
      ),
    );
  }


  Widget _buildItem(int index, Animation<double> animation, Size size) {
    VaseModel flower = VaseModel.flowerVase[index];
    return SizeTransition(
      sizeFactor: animation,
      child: CartCard(flower: flower, index: index,),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}



