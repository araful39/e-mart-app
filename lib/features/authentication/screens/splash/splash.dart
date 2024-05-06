import 'package:e_mart/common/widgets/images/t_rounded_image.dart';
import 'package:e_mart/features/authentication/screens/login/login.dart';
import 'package:e_mart/navigation_menu.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   checkCurrentUserAndNavigate();
  }
FirebaseAuth auth =FirebaseAuth.instance;
  void checkCurrentUserAndNavigate() async {
    await Future.delayed(const Duration(seconds: 5));

    if (auth.currentUser == null) {
      Get.offAll(const LoginScreen());
    } else {
      Get.offAll(const NavigationMenu());
    }
  }
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(
        child: RRoundedImage(imageUrl: TImages.handshake, isNetworkImage: false),
      ),
    );
  }
}
