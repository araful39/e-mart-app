import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_mart/features/authentication/screens/signup/verify_email.dart';
import 'package:e_mart/utills/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpController extends GetxController {
  static SingUpController get instance => Get.find();

//// variables
  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  late final progress = false.obs;
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> singupFormKey = GlobalKey<FormState>();

  //// --SIGNUP
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> singUp(BuildContext context) async {
    try {


      progress.value = true;

       // if(singupFormKey.currentState!.validate())return;

      // Register user
      await _auth.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
// Firestore add user
      await _firestore.collection('users').doc(phoneNumber.text).set({
        'firstName': firstName.text,
        'lastName': lastName.text,
        'username': userName.text,
        'email': email.text,
        'phoneNumber': phoneNumber.text,
        'password': password.text,
      });
      progress.value = false;
      // Navigate to the home page after successful sign up
      Get.offAll(() => const VerifyEmailScreen());
    } catch (e) {
      TLoader.warningSnackBar(title: 'Something went wrong.', message: "$e");
    }
  }
}
