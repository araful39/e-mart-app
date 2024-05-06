
import 'package:e_mart/navigation_menu.dart';
import 'package:e_mart/utills/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginController extends GetxController {


  RxBool hidePassword = true.obs;
  final privacyPolicy =false.obs;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final formkey = GlobalKey<FormState>();

  final FirebaseAuth _auth =FirebaseAuth.instance;

Future<void> signIn( BuildContext context) async{
    try{
      
      await _auth.signInWithEmailAndPassword(
            email: email.text.trim(),
            password: password.text.trim()
        ).then((value) => const NavigationMenu());

    }
    catch (e){
      TLoader.errorSnackBar(title: 'On Snap',message: e.toString());

    }




  }
}
