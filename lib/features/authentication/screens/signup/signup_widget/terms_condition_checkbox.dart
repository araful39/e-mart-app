import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:e_mart/utills/helpers/helpers.dart';
import 'package:flutter/material.dart';

class RTermsAndConditionCheckBox extends StatelessWidget {
  const RTermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        Row(
          children: [
            SizedBox(width:20,height: 5,child: Checkbox(value: true, onChanged: (value) {})),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text.rich(

                TextSpan(children: [
              TextSpan(
                  text: '${TTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),

            ])),

          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Text.rich(

            TextSpan(children: [

              TextSpan(
                  text: '${TTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: dark ? TColores.white : TColores.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                    dark ? TColores.white : TColores.primary,
                  )),
              TextSpan(
                  text: '${TTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: TTexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: dark ? TColores.white : TColores.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                      dark ? TColores.white : TColores.primary)),
            ])),
      ],
    );
  }
}
