import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class RSocialButton extends StatelessWidget {
  const RSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
                color: RColores.grey,borderRadius: BorderRadius.circular(100)
            ),
            child:
            IconButton(
                onPressed: (){},
                icon:
                const Image(height: RSizes.iconMd,width: RSizes.iconMd,image: AssetImage(RImages.google)))),
        const SizedBox(width: RSizes.defaultBtwItems,),
        Container(
            decoration: BoxDecoration(
                color: RColores.grey,borderRadius: BorderRadius.circular(100)
            ),
            child:
            IconButton(
                onPressed: (){},
                icon:
                const Image(height: RSizes.iconMd,width: RSizes.iconMd,image: AssetImage(RImages.facebook)))),
      ],
    );
  }
}