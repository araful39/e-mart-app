import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RLoader {




  static warningSnackBar({required title, massage =""}){
    Get.snackbar(
      title,massage,isDismissible: true,shouldIconPulse: true,
      colorText: RColores.white,
      backgroundColor: Colors.orange,
      duration: const Duration(seconds: 3)
    );
  }

}