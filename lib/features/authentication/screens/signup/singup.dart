import 'package:e_mart/common/widgets/login_signup/form_divider.dart';
import 'package:e_mart/common/widgets/login_signup/social_buttons.dart';

import 'package:e_mart/features/authentication/screens/signup/signup_widget/signup_form.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: TSizes.defaultBtwSections,
                ),
                const TSingUpForm(),
                const SizedBox(
                  height: TSizes.defaultBtwSections,
                ),
                TFormDivider(dividerText: TTexts.onSignUpWith.capitalize!),
                const SizedBox(
                  height: TSizes.defaultBtwSections,
                ),
                const TSocialButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
