import 'package:e_mart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_mart/features/authentication/screens/signup/singup.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.defaultBtwSections),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email), labelText: TTexts.email),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              TextFormField(

                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.key),
                  labelText: TTexts.password,
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.visibility_off),

                  ),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(TTexts.remember)
                    ],
                  ),
                  TextButton(
                      onPressed: () =>Get.to(()=>const ForgetPassword()),
                      child: const Text(TTexts.forgetPassword))
                ],
              ),
              const SizedBox(
                height: TSizes.defaultBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text(TTexts.signIn))),
              const SizedBox(
                height: TSizes.defaultBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        Get.to(()=>const SingUpScreen());
                      },
                      child: const Text(TTexts.createAccount))),

            ],
          ),
        ));
  }
}