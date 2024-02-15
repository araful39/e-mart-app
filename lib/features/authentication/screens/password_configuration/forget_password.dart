import 'package:e_mart/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(RTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(
                height: RSizes.spaceBtwItems,
              ),
              Text(RTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.headlineSmall,),
              const SizedBox(
                height: RSizes.defaultBtwSections*2,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: RTexts.email,prefixIcon: Icon(Icons.email)
                ),
              ),
              const SizedBox(
                height: RSizes.defaultBtwSections,
              ),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.off(()=>const ResetPassword()),child: const Text(RTexts.submit),),)
            ],
          ),
        ),
      ),
    );
  }
}
