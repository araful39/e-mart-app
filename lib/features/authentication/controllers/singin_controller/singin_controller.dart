import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUnController extends GetxController{
  static SingUnController get instance=> Get.find();



  final TextEditingController firstName=TextEditingController();
  final TextEditingController lastName=TextEditingController();
  final TextEditingController userName=TextEditingController();
  final TextEditingController email=TextEditingController();
  final TextEditingController phoneNumber=TextEditingController();
  final TextEditingController password=TextEditingController();
  final GlobalKey<FormState> formKey=GlobalKey<FormState>();




Future<void> singUp() async{
  try{


  }
      catch (e){
    if (kDebugMode) {
      print(e.toString());
    }
      }finally{

  }




}

}