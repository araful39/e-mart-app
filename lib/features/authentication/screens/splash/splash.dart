import 'package:e_mart/common/widgets/images/t_rounded_image.dart';
import 'package:e_mart/features/authentication/screens/login/login.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),()=>Get.off(()=>const LoginScreen()));
    return const Scaffold(
      body: Center(
        child: RRoundedImage(imageUrl: TImages.handshake, isNetworkImage: false),
      ),
    );
  }
}
