import 'package:flutter/material.dart';

class SizeUtil {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double referenceHeight = 896.0;
  static double referenceWidth = 414.0;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per the screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeUtil.screenHeight;
  return (inputHeight / SizeUtil.referenceHeight) * screenHeight;
}

// Get the proportionate width as per the screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeUtil.screenWidth;
  return (inputWidth / SizeUtil.referenceWidth) * screenWidth;
}
