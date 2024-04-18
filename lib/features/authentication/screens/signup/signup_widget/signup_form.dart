import 'package:e_mart/features/authentication/controllers/singin_controller/singin_controller.dart';
import 'package:e_mart/features/authentication/screens/signup/signup_widget/terms_condition_checkbox.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:e_mart/utills/validat/validat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TSingUpForm extends StatelessWidget {
  const TSingUpForm({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SingUpController());
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  validator: (value)=>TValidator.validateEmptyText("First Name", value),
                  controller: controller.firstName,
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: TTexts.firstName),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Flexible(
                child: TextFormField(
                  validator: (value)=>TValidator.validateEmptyText("Last Name", value),
                  controller: controller.lastName,
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: TTexts.lastName),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value)=>TValidator.validateEmptyText("User Name", value),
            controller: controller.userName,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person), hintText: TTexts.userName),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value)=>TValidator.validateEmail(value),
            controller: controller.email,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email), hintText: TTexts.email),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value) => TValidator.validateEmptyText("Phone Number", value),
            controller: controller.phoneNumber,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone), hintText: TTexts.phoneNo),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value)=>TValidator.validatePassword(value),
            controller: controller.password,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key), hintText: TTexts.password),
          ),
          const SizedBox(height: TSizes.defaultBtwSections),
          const TTermsAndConditionCheckBox(),
          const SizedBox(
            height: TSizes.defaultBtwSections,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    controller.singUp(context);

                  },
                  child: const Text(TTexts.createAccount)))
        ],
      ),
    );
  }
}
