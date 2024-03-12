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


Future<void> singUp() async{
  try{
await auth.createUserWithEmailAndPassword(email: email.text, password: password.text);

  }
     catch (e){
    if (kDebugMode) {
      print(e.toString());
    }
      }finally{

  }




}

}