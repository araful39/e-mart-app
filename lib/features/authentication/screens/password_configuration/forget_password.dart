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
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(
                height: TSizes.defaultBtwItems,
              ),
              Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.headlineSmall,),
              const SizedBox(
                height: TSizes.defaultBtwSections*2,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: TTexts.email,prefixIcon: Icon(Icons.email)
                ),
              ),
              const SizedBox(
                height: TSizes.defaultBtwSections,
              ),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.off(()=>const ResetPassword()),child: const Text(TTexts.submit),),)
            ],
          ),
        ),
      ),
    );
  }
}
