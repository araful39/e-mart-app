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
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                  width: THelperFunctions.screenWidth() * 0.6,
                  image: const AssetImage(TImages.verifyImage)),
              const SizedBox(
                height: TSizes.defaultBtwSections,
              ),
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.defaultBtwItems,
              ),
              Text(
                "support@raju.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.defaultBtwItems,
              ),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.defaultBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                      images: TImages.handshake,
                      title: TTexts.yourAccountCreatedTitle,
                      subTile: TTexts.yourAccountCreatedSubTitle,
                      onPress: () => Get.to(() => const LoginScreen()))),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(
                height: TSizes.defaultBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(TTexts.resentEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
