
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



 signIn( BuildContext context) async{

    try{

      // await _auth.signInWithEmailAndPassword(
      //       email: email.text.trim(),
      //       password: password.text.trim()
      //   ).then((value) {
      //   // saveUserLoginInfo(email.text.trim(), password.text.trim());
      //   //  Get.offAll(()=> const NavigationMenu());
      // });
      Get.offAll(()=> const NavigationMenu());
    }
    catch (e){
      TLoader.errorSnackBar(title: 'On Snap',message: e.toString());

    }




  }
  //
  // void saveUserLoginInfo(String email, String password) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('email', email);
  //   await prefs.setString('password', password);
  // }
  // void getUserLoginInfo() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String savedEmail = prefs.getString('email') ?? '';
  //   String savedPassword = prefs.getString('password') ?? '';
  //
  //   // Fill in the email and password fields with the saved user login information
  //   email.text = savedEmail;
  //   password.text = savedPassword;
  // }
}
