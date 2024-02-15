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
    final dark = RHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        Row(
          children: [
            SizedBox(width:20,height: 5,child: Checkbox(value: true, onChanged: (value) {})),
            const SizedBox(
              width: RSizes.spaceBtwItems,
            ),
            Text.rich(

                TextSpan(children: [
              TextSpan(
                  text: '${RTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),

            ])),

          ],
        ),
        const SizedBox(
          height: RSizes.spaceBtwItems,
        ),
        Text.rich(

            TextSpan(children: [

              TextSpan(
                  text: '${RTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: dark ? RColores.white : RColores.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                    dark ? RColores.white : RColores.primary,
                  )),
              TextSpan(
                  text: '${RTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: RTexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: dark ? RColores.white : RColores.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                      dark ? RColores.white : RColores.primary)),
            ])),
      ],
    );
  }
}
