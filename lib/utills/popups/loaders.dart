import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoader {


static successSnackBar({required title, message ='', duration =3}){
  Get.snackbar(
      title,
      message,
    isDismissible: true,
    colorText: Colors.white,
    backgroundColor: TColores.primary,
    snackPosition: SnackPosition.BOTTOM,
    duration: Duration(seconds: duration),
    margin: const EdgeInsets.all(10),
    icon: const Icon(Icons.check,color: TColores.white,)

  );
}

  static warningSnackBar({required title, message =""}){
    Get.snackbar(
      title,
        message,
        isDismissible: true,
        shouldIconPulse: true,
      colorText: TColores.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Icons.warning,color: TColores.white)
    );
  }

}