import 'package:e_mart/features/authentication/screens/signup/signup_widget/terms_condition_checkbox.dart';
import 'package:e_mart/features/authentication/screens/signup/verify_email.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RSingUpForm extends StatelessWidget {
  const RSingUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: RTexts.firstName),
                ),
              ),
              const SizedBox(
                width: RSizes.spaceBtwInputFields,
              ),
              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: RTexts.lastName),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: RSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person), hintText: RTexts.userName),
          ),
          const SizedBox(
            height: RSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email), hintText: RTexts.email),
          ),
          const SizedBox(
            height: RSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone), hintText: RTexts.phoneNo),
          ),
          const SizedBox(
            height: RSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key), hintText: RTexts.password),
          ),
          const SizedBox(height: RSizes.defaultBtwSections),
          const RTermsAndConditionCheckBox(),
          const SizedBox(
            height: RSizes.defaultBtwSections,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const VerifyEmailScreen()),
                  child: const Text(RTexts.createAccount)))
        ],
      ),
    );
  }
}
