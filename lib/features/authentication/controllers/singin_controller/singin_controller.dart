
import 'package:e_mart/features/authentication/controllers/network_controller.dart';
import 'package:e_mart/utills/popups/full_screen_loader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpController extends GetxController{
  static SingUpController get instance=> Get.find();



  final TextEditingController firstName=TextEditingController();
  final TextEditingController lastName=TextEditingController();
  final TextEditingController userName=TextEditingController();
  final TextEditingController email=TextEditingController();
  final TextEditingController phoneNumber=TextEditingController();
  final TextEditingController password=TextEditingController();
  final GlobalKey<FormState> formKey=GlobalKey<FormState>();

final auth=FirebaseAuth.instance;


Future<void> singUp( BuildContext context) async{
  try{
RFullScreenLoader.openLoaderDialog("We are processing.....", context);

final isConnected=await NetworkManager.instance.isConnected();

  }
     catch (e){
    if (kDebugMode) {
      print(e.toString());
    }
      }finally{

  }




}

}

