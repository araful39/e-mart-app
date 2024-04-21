import 'package:e_mart/features/authentication/controllers/login/login_controller.dart';
import 'package:e_mart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_mart/features/authentication/screens/signup/singup.dart';
import 'package:e_mart/navigation_menu.dart';
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
  final TextEditingController _email=TextEditingController();
  final TextEditingController _password=TextEditingController();
  final _formkey=GlobalKey<FormState>();

  // final _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(LoginController());
    return Form(
      key: _formkey,
        child: Padding(
          padding:  const EdgeInsets.symmetric(vertical: TSizes.defaultBtwSections),
          child: Column(
            children: [
              TextFormField(
                validator: (value){
                  return "Enter valid email";
                },
                controller: _email,
                decoration:  InputDecoration(
                    prefixIcon: const Icon(Icons.email), labelText: TTexts.email,labelStyle: TextStyle(color: THelperFunctions.isDarkMode(context) ? TColores.textWhite : TColores.black)),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              Obx(
    ()=> TextFormField(
      validator: (value){
        return "Enter valid password";
      },
      controller: _password,
                  obscuringCharacter: "*",
                  obscureText: controller.isClick.value,
                  decoration: InputDecoration(
                    helperStyle: TextStyle(color: THelperFunctions.isDarkMode(context) ? TColores.textWhite : TColores.black),
                    prefixIcon: const Icon(Icons.key),

                    labelText: TTexts.password,
                      labelStyle: TextStyle(color: THelperFunctions.isDarkMode(context) ? TColores.textWhite : TColores.black),
                    suffixIcon: IconButton(
                        onPressed: (){
                          controller.visible();

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
                      onPressed: () async {

                        Get.to(()=> const NavigationMenu());
                    //     try {
                    // if(_email.text.isNotEmpty && _password.text.isNotEmpty)  {
                    //   await _auth.signInWithEmailAndPassword(
                    //       email: _email.text,
                    //       password: _password.text
                    //   ).then((value) => Get.to(()=> const NavigationMenu()));
                    // } else{
                    //   Get.snackbar("Enter", "Your document",backgroundColor: Colors.indigo,colorText: Colors.white);
                    // }
                    //
                    //     } on FirebaseAuthException catch (e) {
                    //       if (e.code == 'user-not-found') {
                    //         if (kDebugMode) {
                    //           print('No user found for that email.');
                    //         }
                    //       } else if (e.code == 'wrong-password') {
                    //         if (kDebugMode) {
                    //           print('Wrong password provided for that user. please sure');
                    //         }
                    //       }
                    //     }

                      }, child: const Text(TTexts.signIn))),
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



