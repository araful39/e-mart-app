
import 'package:e_mart/features/authentication/screens/signup/signup_widget/terms_condition_checkbox.dart';
import 'package:e_mart/features/authentication/screens/signup/verify_email.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TSingUpForm extends StatelessWidget {
  const TSingUpForm({
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
                      hintText: TTexts.firstName
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),

              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: TTexts.lastName
                  ),
                ),
              ),

            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: TTexts.userName
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: TTexts.email
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: TTexts.phoneNo
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key),
                hintText: TTexts.password
            ),
          ),
          const SizedBox(
              height: TSizes.defaultBtwSections
          ),

          const TTermsAndConditionCheckBox(),
          const SizedBox(
            height: TSizes.defaultBtwSections,
          ),
          SizedBox(
              width:double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const VerifyEmailScreen()), child: const Text(TTexts.createAccount)))


        ],
      ),
    );
  }
}

