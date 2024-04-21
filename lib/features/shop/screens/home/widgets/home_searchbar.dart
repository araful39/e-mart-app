import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/device/device_utility.dart';
import 'package:flutter/material.dart';

class RSearchContainer extends StatelessWidget {
   const RSearchContainer({
    super.key, this.text, this.icon, this.onpress,
    this.padding=const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });
  final String? text;
  final IconData? icon;
  final VoidCallback? onpress;
  final EdgeInsetsGeometry padding;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding:  padding ,
        child: Container(
            width: TDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(TSizes.md),
            decoration: BoxDecoration(
                color: RColores.light,
                borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
                border: Border.all(color: RColores.grey)
            ),
            child:  Row(
              children: [
                Icon(icon ?? Icons.search,color: RColores.darkGery,),
                const SizedBox(width: TSizes.xs,),
                Text( text ??"Search in Store",style: Theme.of(context).textTheme.bodySmall,)
              ],
            )
        ),
      ),
    );
  }
}