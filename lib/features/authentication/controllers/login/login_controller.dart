
import 'package:e_mart/navigation_menu.dart';
import 'package:e_mart/utills/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginController extends GetxController {
  RxBool hidePassword = true.obs;


  final privacyPolicy =false.obs;

 signIn( BuildContext context) async{
    try{

// Privacy Policy Check

      if(!privacyPolicy.value){
        TLoader.warningSnackBar(title: "Accept Privacy Policy",
            message: "In order to create account, you must have to read and accept the Privacy Policy & Terms of Use"
        );
return null;
      }
   await  Get.to(const NavigationMenu());


    }
    catch (e){
      TLoader.errorSnackBar(title: 'On Snap',message: e.toString());

    }




  }
}
