import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VerificationController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  RxBool isEmailVerified = false.obs;

  Future<void> sendVerificationEmail() async {
    try {
      User? user = _auth.currentUser;
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
        Get.snackbar('Success', 'Verification email sent to ${user.email}');
      } else {
        Get.snackbar('Error', 'User is already verified');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void checkEmailVerification() {
    User? user = _auth.currentUser;
    if (user != null) {
      isEmailVerified.value = user.emailVerified;
    }
  }
}