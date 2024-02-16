import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/images/r_circular_image.dart';
import 'package:e_mart/common/widgets/texts/brand_title_width_verified_icon.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
class RContainerProductDetails extends StatelessWidget {
  const RContainerProductDetails({
    super.key,
    required this.title, required this.productLength, required this.imagePath,

  });

  final String title;
  final int productLength;
  final List imagePath;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(RSizes.defaultSpace),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: RColores.black),
            borderRadius: BorderRadius.circular(15),
            shape: BoxShape.rectangle),
        child: Column(
          children: [
            RBrandCard(

          borderColor: RColores.darkGery,
              backgroundColor: Colors.transparent,
              margin: EdgeInsets.only(bottom: RSizes.spaceBtwItems),
              child: Column(
                children: [

                ],
              ),

              ),



            Row(
              children: [
                const RCircularImage(imagePath: RImages.shoes3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RBrandTitleWithVerifiedIcon(title: title),
                    Text("$productLength product")
                  ],
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}