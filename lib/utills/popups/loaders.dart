import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RLoader {


static successSnackBar({required title, message ='', duration =3}){
  Get.snackbar(
      title,
      message,
    isDismissible: true,
    colorText: Colors.white,
    backgroundColor: RColores.primary,
    snackPosition: SnackPosition.BOTTOM,
    duration: Duration(seconds: duration),
    margin: const EdgeInsets.all(10),
    icon: const Icon(Icons.check,color: RColores.white,)

  );
}

  static warningSnackBar({required title, message =""}){
    Get.snackbar(
      title,
        message,
        isDismissible: true,
        shouldIconPulse: true,
      colorText: RColores.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Icons.warning,color: RColores.white)
    );
  }

  static errorSnackBar({required title,message =" "}) {

    Get.snackbar(
        title,
        message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: RColores.white,
      backgroundColor: Colors.red.shade600,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Icons.warning,color: RColores.white,)
    );
  }

}