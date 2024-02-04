import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:e_mart/utills/helpers/helpers.dart';
import 'package:flutter/material.dart';

class TTermsAndConditionCheckBox extends StatelessWidget {
  const TTermsAndConditionCheckBox({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        Checkbox(value: true, onChanged: (value){}),
        const SizedBox(
          width: TSizes.defaultBtwItems,
        ),
        Row(
          children: [
            Text.rich(TextSpan(children: [
              TextSpan(
                  text:'${ TTexts.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall
              ),
              TextSpan(

                  text:'${ TTexts.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? TColores.white : TColores.primary,
                decoration: TextDecoration.underline,
                decorationColor:  dark ? TColores.white : TColores.primary,
              )
              ),
              TextSpan(text: '${TTexts.and} ',style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: TTexts.termsOfUse,style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColores.white : TColores.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColores.white : TColores.primary
              )),
            ]),),

          ],
        )
      ],
    );
  }
}