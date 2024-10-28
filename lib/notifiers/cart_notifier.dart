import 'package:animated_flower_vase_app_ui/models/vase_model.dart';
import 'package:flutter/material.dart';

class CartNotifier extends ChangeNotifier{

  void incrementQuantity(int index) {
    VaseModel.flowerVase[index].quantity++;
    notifyListeners();
  }

  void decrementQuantity(int index) {
    if (VaseModel.flowerVase[index].quantity > 1) {
      VaseModel.flowerVase[index].quantity--;
      notifyListeners();
    }
  }

}