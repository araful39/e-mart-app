
import 'package:e_mart/navigation_menu.dart';
import 'package:e_mart/utills/popups/full_screen_loader.dart';
import 'package:e_mart/utills/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpController extends GetxController {
  static SingUpController get instance => Get.find();

//// variables
  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> singupFormKey = GlobalKey<FormState>();

  //// --SIGNUP
  final auth = FirebaseAuth.instance;

 singUp(BuildContext context) async {
    try {
      // Start Loading
      // TFullScreenLoader.openLoaderDialog("We are processing.....", context);
// Form validation
      // if (singupFormKey.currentState!.validate()) {
      //   return ;
      // }

// Privacy Policy Check
      if (!privacyPolicy.value) {
        TLoader.warningSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In order to create account, you must have to read and accept the Privacy Policy & Terms of Use");
        return ;
      }

// TLoader.successSnackBar(title: "Congratulations",message: "Your account has been created! Verify email to continue.");

//Move to Verify Email Screen
await Get.to(()=> const  NavigationMenu());




    } catch (e) {
      TLoader.errorSnackBar(title: 'On Snap', message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}
