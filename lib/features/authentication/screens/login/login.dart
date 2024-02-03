import 'package:e_mart/common/styles/spacing_styles.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:e_mart/utills/helpers/helpers.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child:Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      height: 150,
                      image: AssetImage(dark ?TImages.lightAppLogo : TImages.darkAppLogo)),
                  Text(TTexts.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  Text(TTexts.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,)
                ],
              ),
              Form(child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon:Icon(Icons.email),
                      labelText: TTexts.email
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.key),labelText: TTexts.password,suffixIcon: Icon(Icons.visibility)
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwInputFields/2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value){}),
                          const Text(TTexts.remember)
                        ],
                      ),

                      TextButton(
                          onPressed: (){},
                          child: const Text(TTexts.forgetPassword))
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.defaultBtwSections,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, child:const Text(TTexts.signIn))),
                  const SizedBox(
                    height: TSizes.defaultBtwSections,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(onPressed: (){}, child:const Text(TTexts.createAccount))),
                ],
              ))
            ],
          ),
        )
      ),
    );
  }
}
