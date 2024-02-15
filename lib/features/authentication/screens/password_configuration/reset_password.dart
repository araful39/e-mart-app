import 'package:e_mart/features/authentication/screens/login/login.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:e_mart/utills/helpers/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
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
                  image: const AssetImage(RImages.deliveryEmail)),
              const SizedBox(
                height: RSizes.defaultBtwSections,
              ),
              Text(
                RTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),
              Text(
                RTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: RSizes.defaultBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text(RTexts.done),
                ),
              ),
              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
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
