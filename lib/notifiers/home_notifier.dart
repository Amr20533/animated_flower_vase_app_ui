import 'package:animated_flower_vase_app_ui/models/vase_model.dart';
import 'package:flutter/cupertino.dart';

class HomeNotifier extends ChangeNotifier{
  final PageController pageController = PageController();
  final PageController flowerPageController = PageController(viewportFraction: 0.42);

  int _currentVase = 0;
  int get currentVase => _currentVase;

  set currentVase(int newVase){
    _currentVase = newVase;
    notifyListeners();
  }

  void nextPage() {
    if (_currentVase < VaseModel.flowerVase.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      flowerPageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void previousPage() {
    if (_currentVase > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      flowerPageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }
}