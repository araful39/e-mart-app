import 'package:e_mart/common/styles/spacing_styles.dart';

import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:e_mart/utills/helpers/helpers.dart';

import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.images, required this.title, required this.subTile, required this.onPress});
  final String images,title,subTile;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Image(
                  width: RHelperFunctions.screenWidth()*0.6,
                  image:  AssetImage(images)),
              const SizedBox(
                height: RSizes.defaultBtwSections,
              ),
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(
                height: RSizes.defaultBtwItems,
              ),
              const SizedBox(
                height: RSizes.defaultBtwItems,
              ),
              Text(subTile,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(
                height: RSizes.defaultBtwSections,
              ),
SizedBox(              width: double.infinity,child: ElevatedButton(onPressed:onPress,child: const Text(RTexts.rContinue),),
)
            ],
          ),
        ),
      ),
    );
  }
}
