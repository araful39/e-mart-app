import 'package:e_mart/common/styles/shadow_styles.dart';
import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class RProductCardVertical extends StatelessWidget {
  const RProductCardVertical({super.key, required this.imagePath});
final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [RShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(RSizes.productImageRadius),
        color: RColores.white
      ),
      child: Column(
        children: [
    RRoundedContainer(height: 180,padding: const EdgeInsets.all(RSizes.sm),child: Image(image: AssetImage(imagePath),),)

    ],
      ),
    );
  }
}
