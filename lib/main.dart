import 'package:app/view/screens/cartscreen/cartscreen.dart';
import 'package:app/view/screens/onboarding.dart/first_screen/splashscreen.dart';
import 'package:app/view/screens/onboarding.dart/first_screen/screen_wid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FisrtBoarding(),
    );
  }
}
