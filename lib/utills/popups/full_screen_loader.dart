
import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RFullScreenLoader{

  static void openLoaderDialog(String? text ,BuildContext context){
    showDialog(context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_)=> PopScope(child: Container(
          color: RColores.white,
          width: double.infinity,
          height: double.infinity,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(text!,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: 20,),
              const CircularProgressIndicator()
            ],
          ),
        )));



  }



}