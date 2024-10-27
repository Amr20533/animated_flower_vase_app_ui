import 'package:animated_flower_vase_app_ui/models/vase_model.dart';
import 'package:animated_flower_vase_app_ui/notifiers/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeFlowerVaseView extends StatelessWidget {

  const HomeFlowerVaseView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<HomeNotifier>(builder: (context, notifier, _){
      return Center(
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(-0.785398),
          child: Container(
            width: size.width * 0.5,
            height: size.height * 0.8,
            // color: Colors.blue,
            margin: const EdgeInsets.only(right: 26),
            child: PageView.builder(
              controller: notifier.flowerPageController,
              itemCount: VaseModel.flowerVase.length,
              onPageChanged: (index) {
                notifier.currentVase = index;
              },
              scrollDirection: Axis.vertical,
              itemBuilder: (context, pageIndex) {
                double scale = pageIndex == notifier.currentVase ? 1.0 : 0.8;

                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationZ(0.785398),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    padding: EdgeInsets.only(bottom: size.width * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.scale(
                          scale: scale,
                          child: Text(
                            "Page $pageIndex",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24 * scale,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      );
    });

  }
}


