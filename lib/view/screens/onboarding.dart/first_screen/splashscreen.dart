import 'package:app/view/screens/cartscreen/size_config.dart';
import 'package:app/view/screens/onboarding.dart/first_screen/screen_wid.dart';
import 'package:flutter/material.dart';

class FisrtBoarding extends StatelessWidget {
  static String routeName = "/splash";
  const FisrtBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig();
    return Scaffold(
        body: FirstWid(),

        );
  }
}
