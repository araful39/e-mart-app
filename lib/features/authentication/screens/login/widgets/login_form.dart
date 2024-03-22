import 'package:e_mart/features/authentication/controllers/login/login_controller.dart';
import 'package:e_mart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_mart/features/authentication/screens/signup/singup.dart';
import 'package:e_mart/navigation_menu.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RLoginForm extends StatefulWidget {
  const RLoginForm({
    super.key,
  });

  @override
  State<RLoginForm> createState() => _RLoginFormState();
}

class _RLoginFormState extends State<RLoginForm> {
  final TextEditingController _email=TextEditingController();
  final TextEditingController _password=TextEditingController();
  final _formkey=GlobalKey<FormState>();

  final _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(LoginController());
    return Form(
      key: _formkey,
        child: Padding(
          padding:  const EdgeInsets.symmetric(vertical: RSizes.defaultBtwSections),
          child: Column(
            children: [
              TextFormField(
                validator: (value){
                  return "Enter valid email";
                },
                controller: _email,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email), labelText: RTexts.email),
              ),
              const SizedBox(
                height: RSizes.spaceBtwInputFields,
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
                    prefixIcon: const Icon(Icons.key),
                    labelText: RTexts.password,
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
                      onPressed: () async {
                        try {
                    if(_email.text.isNotEmpty && _password.text.isNotEmpty)  {
                      await _auth.signInWithEmailAndPassword(
                          email: _email.text,
                          password: _password.text
                      ).then((value) => Get.to(()=> const NavigationMenu()));
                    } else{
                      Get.snackbar("Enter", "Your document",backgroundColor: Colors.indigo,colorText: Colors.white);
                    }

                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            if (kDebugMode) {
                              print('No user found for that email.');
                            }
                          } else if (e.code == 'wrong-password') {
                            if (kDebugMode) {
                              print('Wrong password provided for that user. please sure');
                            }
                          }
                        }

                      }, child: const Text(RTexts.signIn))),
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



