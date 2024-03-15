import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RFullScreenLoader{

  static void openLoaderDialog(String? text, String animation){
    showDialog(context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_)=> PopScope(child: Container(
          color: RColores.white,
          width: double.infinity,
          height: double.infinity,
          child: const Column(
            children: [
              SizedBox(height: 250,),

            ],
          ),
        )));



  }



}