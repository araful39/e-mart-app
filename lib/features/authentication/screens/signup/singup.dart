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
            padding: const EdgeInsets.all(RSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  RTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: RSizes.defaultBtwSections,
                ),
                const RSingUpForm(),
                const SizedBox(
                  height: RSizes.defaultBtwSections,
                ),
                RFormDivider(dividerText: RTexts.onSignUpWith.capitalize!),
                const SizedBox(
                  height: RSizes.defaultBtwSections,
                ),
                const RSocialButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
