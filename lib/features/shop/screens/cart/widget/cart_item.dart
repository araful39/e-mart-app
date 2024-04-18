import 'package:e_mart/common/widgets/images/t_rounded_image.dart';
import 'package:e_mart/common/widgets/products/product_title_text.dart';
import 'package:e_mart/common/widgets/texts/brand_title_width_verified_icon.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
class RCartItem extends StatelessWidget {
  const RCartItem({
    super.key, required this.imagePath, required this.isNetworkImage, required this.brandTitle, required this.productTitle,
  });

  final String imagePath;
  final bool isNetworkImage;
  final String brandTitle;
  final String productTitle;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         RRoundedImage(
           backgroundColor: TColores.grey,
           imageUrl: imagePath, isNetworkImage: isNetworkImage,height: 70,width: 70,),
         const SizedBox(
          width: TSizes.spaceBtwItems,
        ),

        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               RBrandTitleWithVerifiedIcon(title: brandTitle),
                RProductTitleText(title: productTitle,maxLine: 1,),
              Text.rich(
                  TextSpan(
                      children: [

                        TextSpan(text: "Color ",style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Green ",style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Size ",style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Uk 08 ",style: Theme.of(context).textTheme.bodySmall),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}