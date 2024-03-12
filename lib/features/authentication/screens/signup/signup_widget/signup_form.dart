import 'package:e_mart/features/authentication/controllers/singin_controller/singin_controller.dart';
import 'package:e_mart/features/authentication/screens/signup/signup_widget/terms_condition_checkbox.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:e_mart/utills/validat/validat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RSingUpForm extends StatelessWidget {
  const RSingUpForm({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SingUnController());
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  validator: (value)=>RValidator.validateEmptyText("First Name", value),
                  controller: controller.firstName,
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: RTexts.firstName),
                ),
              ),
              const SizedBox(
                width: RSizes.spaceBtwInputFields,
              ),
              Flexible(
                child: TextFormField(
                  validator: (value)=>RValidator.validateEmptyText("Last Name", value),
                  controller: controller.lastName,
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: RTexts.lastName),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: RSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value)=>RValidator.validateEmptyText("User Name", value),
            controller: controller.userName,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person), hintText: RTexts.userName),
          ),
          const SizedBox(
            height: RSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value)=>RValidator.validateEmail(value),
            controller: controller.email,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email), hintText: RTexts.email),
          ),
          const SizedBox(
            height: RSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value) => RValidator.validateEmptyText("Phone Number", value),
            controller: controller.phoneNumber,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone), hintText: RTexts.phoneNo),
          ),
          const SizedBox(
            height: RSizes.spaceBtwInputFields,
          ),
          TextFormField(
            validator: (value)=>RValidator.validatePassword(value),
            controller: controller.password,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key), hintText: RTexts.password),
          ),
          const SizedBox(height: RSizes.defaultBtwSections),
          const RTermsAndConditionCheckBox(),
          const SizedBox(
            height: RSizes.defaultBtwSections,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    controller.singUp();

                  },
                  child: const Text(RTexts.createAccount)))
        ],
      ),
    );
  }
}
