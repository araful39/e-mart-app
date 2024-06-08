import 'package:e_mart/features/authentication/controllers/login/login_controller.dart';
import 'package:e_mart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_mart/features/authentication/screens/signup/singup.dart';

import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:e_mart/utills/helpers/helpers.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoginForm extends StatefulWidget {
  const TLoginForm({
    super.key,
  });

  @override
  State<TLoginForm> createState() => _TLoginFormState();
}

class _TLoginFormState extends State<TLoginForm> {



  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
        key: controller.formkey,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: TSizes.defaultBtwSections),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  return "Enter valid email";
                },
                controller: controller.email,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: TTexts.email,
                    labelStyle: TextStyle(
                        color: THelperFunctions.isDarkMode(context)
                            ? RColores.textWhite
                            : RColores.black)),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              Obx(
                () => TextFormField(
                  validator: (value) {
                    return "Enter valid password";
                  },
                  controller: controller.password,
                  obscuringCharacter: "*",
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    helperStyle: TextStyle(
                        color: THelperFunctions.isDarkMode(context)
                            ? RColores.textWhite
                            : RColores.black),
                    prefixIcon: const Icon(Icons.key),
                    labelText: TTexts.password,
                    labelStyle: TextStyle(
                        color: THelperFunctions.isDarkMode(context)
                            ? RColores.textWhite
                            : RColores.black),
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.hidePassword.value =
                            !controller.hidePassword.value;
                      },
                      icon: controller.hidePassword.value
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
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
                      Obx(() => Checkbox(
                          value: controller.privacyPolicy.value,
                          onChanged: (value) {
                            controller.privacyPolicy.value=value!;
                          })),
                      const Text(TTexts.remember)
                    ],
                  ),
                  TextButton(
                      onPressed: () => Get.to(() => const ForgetPassword()),
                      child: const Text(TTexts.forgetPassword))
                ],
              ),
              const SizedBox(
                height: TSizes.defaultBtwSections,
              ),
              Obx(
                    ()=> SizedBox(
                    width: double.infinity,
                    child: controller.privacyPolicy.value ? ElevatedButton(
                        onPressed: () {
                          controller.signIn(context);
                        },
                        child:  const Text(TTexts.signIn)):ElevatedButton(
                        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.grey) ),
                        onPressed: () {
                        },
                        child:  const Text(TTexts.signIn)) ),
              ),
              const SizedBox(
                height: TSizes.defaultBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        Get.to(() => const SingUpScreen());
                      },
                      child: const Text(TTexts.createAccount))),
            ],
          ),
        ));
  }
}
