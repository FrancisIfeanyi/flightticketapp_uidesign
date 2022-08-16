import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    double x = getScreenHeight() / pixels; // screen proportion
    return getScreenHeight() / x;
  }

  static getWidth(double pixels) {
    double x = getScreenWidth() / pixels; // screen proportion
    return getScreenWidth() / x;
  }
}
