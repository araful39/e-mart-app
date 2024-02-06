import 'package:e_mart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_mart/features/authentication/screens/signup/singup.dart';
import 'package:e_mart/navigation_menu.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(LoginController());
    return Form(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: TSizes.defaultBtwSections),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email), labelText: TTexts.email),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              Obx(
    ()=> TextFormField(
                  obscuringCharacter: "*",
                  obscureText: controller.isClick.value,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    labelText: TTexts.password,
                    suffixIcon: IconButton(
                        onPressed: (){
                          controller.visible();
                          if (kDebugMode) {
                            print("Button 12");
                          }
                        },
                        icon: controller.isClick.value? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),

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
                      onPressed: () =>Get.to(()=>const NavigationMenu()), child: const Text(TTexts.signIn))),
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



class LoginController extends GetxController{
  RxBool isClick=true.obs;

  visible(){
    isClick.value=!isClick.value;
  }

}