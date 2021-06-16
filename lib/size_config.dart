

import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

//To get the proportionate screen height as per screen size
double getProportionateScreenHeight(double inputheight) {
  double screenHeight = SizeConfig.screenHeight;

  //812 is the layout height that  designers use
  return (inputheight / 812.0) * screenHeight;
}

// To get the proportionate screen width as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;

  // 375 is the layout width that designers use
  return (inputWidth / 375.0) * screenWidth;
}
