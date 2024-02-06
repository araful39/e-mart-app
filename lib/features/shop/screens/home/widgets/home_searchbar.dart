import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/device/device_utility.dart';
import 'package:flutter/material.dart';

class RSearchContainer extends StatelessWidget {
  const RSearchContainer({
    super.key, this.text, this.icon,
  });
  final String? text;
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: RSizes.defaultBtwSections),
      child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(RSizes.md),
          decoration: BoxDecoration(
              color: RColores.white,
              borderRadius: BorderRadius.circular(RSizes.cardRadiusLg),
              border: Border.all(color: RColores.grey)
          ),
          child:  Row(
            children: [
              Icon(icon ?? Icons.search,color: RColores.darkGery,),
              const SizedBox(width: RSizes.defaultBtwItems,),
              Text( text ??"Search in Store",style: Theme.of(context).textTheme.bodySmall,)
            ],
          )
      ),
    );
  }
}