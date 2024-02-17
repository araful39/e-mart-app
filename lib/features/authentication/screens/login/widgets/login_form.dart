import 'package:e_mart/features/authentication/controllers/login_controller.dart';
import 'package:e_mart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_mart/features/authentication/screens/signup/singup.dart';
import 'package:e_mart/navigation_menu.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RLoginForm extends StatelessWidget {
  const RLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(LoginController());
    return Form(
        child: Padding(
          padding:  const EdgeInsets.symmetric(vertical: RSizes.defaultBtwSections),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email), labelText: RTexts.email),
              ),
              const SizedBox(
                height: RSizes.spaceBtwInputFields,
              ),
              Obx(
    ()=> TextFormField(
                  obscuringCharacter: "*",
                  obscureText: controller.isClick.value,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    labelText: RTexts.password,
                    suffixIcon: IconButton(
                        onPressed: (){
                          controller.visible();
                          if (kDebugMode) {
                            print("visible");
                          }
                        },
                        icon: controller.isClick.value? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),

                      ),
                    ),
                  ),
              ),

              const SizedBox(
                height: RSizes.spaceBtwInputFields / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(RTexts.remember)
                    ],
                  ),
                  TextButton(
                      onPressed: () =>Get.to(()=>const ForgetPassword()),
                      child: const Text(RTexts.forgetPassword))
                ],
              ),
              const SizedBox(
                height: RSizes.defaultBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>Get.to(()=>const NavigationMenu()), child: const Text(RTexts.signIn))),
              const SizedBox(
                height: RSizes.defaultBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        Get.to(()=>const SingUpScreen());
                      },
                      child: const Text(RTexts.createAccount))),

            ],
          ),
        ));
  }
}



