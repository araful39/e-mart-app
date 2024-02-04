import 'package:e_mart/common/styles/spacing_styles.dart';
import 'package:e_mart/common/widgets_login_signup/form_divider.dart';
import 'package:e_mart/common/widgets_login_signup/social_buttons.dart';
import 'package:e_mart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_mart/features/authentication/screens/login/widgets/login_header.dart';

import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:e_mart/utills/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TLoginHeader(dark: dark),
              const TLoginForm(),
              TFormDivider( dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(
                height: TSizes.defaultBtwSections,
              ),
              const TSocialButton()
            ],
          ),
        )),
      ),
    );
  }
}








