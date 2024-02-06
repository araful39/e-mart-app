import 'package:e_mart/common/widgets/success_screen/success_screen.dart';
import 'package:e_mart/features/authentication/screens/login/login.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:e_mart/utills/helpers/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                  width: RHelperFunctions.screenWidth() * 0.6,
                  image: const AssetImage(RImages.verifyImage)),
              const SizedBox(
                height: RSizes.defaultBtwSections,
              ),
              Text(
                RTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: RSizes.defaultBtwItems,
              ),
              Text(
                "support@raju.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: RSizes.defaultBtwItems,
              ),
              Text(
                RTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: RSizes.defaultBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                      images: RImages.handshake,
                      title: RTexts.yourAccountCreatedTitle,
                      subTile: RTexts.yourAccountCreatedSubTitle,
                      onPress: () => Get.to(() => const LoginScreen()))),
                  child: const Text(RTexts.rContinue),
                ),
              ),
              const SizedBox(
                height: RSizes.defaultBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(RTexts.resentEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
