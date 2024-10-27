import 'package:animated_flower_vase_app_ui/models/vase_model.dart';
import 'package:animated_flower_vase_app_ui/notifiers/home_notifier.dart';
import 'package:animated_flower_vase_app_ui/views/details_screen.dart';
import 'package:animated_flower_vase_app_ui/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => HomeNotifier()),
  ],
   child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flower Vase App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      // home: const DetailsScreen(),
      routes: {
        "/" :(context) => const HomeScreen(),
        "/detail" :(context) {
          final VaseModel vaseModel = ModalRoute.of(context)!.settings.arguments as VaseModel;
          return DetailsScreen(vaseModel: vaseModel);
        },
      },
    );
  }
}
