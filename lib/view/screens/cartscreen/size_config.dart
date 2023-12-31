import 'package:flutter/material.dart';

class SizeConfig {
  //static  MediaQueryData _mediaQueryData;
  static  double screenWidth=40;
  static  double screenHeight=40;
  static double? defaultSize;
  static Orientation? orientation;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     orientation = _mediaQueryData.orientation;
//   }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}
