import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:e_mart/utills/helpers/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:   SingleChildScrollView(
        child: Padding(
          padding:   EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                  width: THelperFunctions.screenWidth()*0.6,
                  image:  const AssetImage(TImages.deliveryEmail)),
              const SizedBox(
                height: TSizes.defaultBtwSections,
              ),
              Text(TTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),

              const SizedBox(
                height: TSizes.defaultBtwItems,
              ),
              Text(TTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(
                height: TSizes.defaultBtwSections,
              ),
              SizedBox(              width: double.infinity,child: ElevatedButton(onPressed:(){},child: const Text(TTexts.done),),
              ),
              const SizedBox(
                height: TSizes.defaultBtwItems,
              ),
              SizedBox(              width: double.infinity,child: OutlinedButton(onPressed:(){},child: const Text(TTexts.resentEmail),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
