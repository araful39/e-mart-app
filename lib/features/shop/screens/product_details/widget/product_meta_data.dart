import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/images/r_circular_image_with_container.dart';
import 'package:e_mart/common/widgets/products/product_price_text.dart';
import 'package:e_mart/common/widgets/products/product_title_text.dart';
import 'package:e_mart/common/widgets/texts/brand_title_width_verified_icon.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/enums.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class RProductMetaData extends StatelessWidget {
  const RProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RRoundedContainer(
              backgroundColor: RColores.secondary.withOpacity(0.8),
              radius: RSizes.sm,
              padding: const EdgeInsets.symmetric(
                  horizontal: RSizes.sm, vertical: RSizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.apply(color: RColores.black),
              ),
            ),
            const SizedBox(
              width: RSizes.spaceBtwItems,
            ),
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: RSizes.spaceBtwItems,
            ),
            const RProductPriceText(price: "150",isLarge: true,)
          ],
        ),
        const SizedBox(
          height: RSizes.sm,
        ),
        const RProductTitleText(title: "Green Nike Sports Shoes"),
        const SizedBox(
          height: RSizes.sm,
        ),
        const Row(
          children: [
            RProductTitleText(title: "Status"),
            SizedBox(
              width: RSizes.sm,
            ),
            Text("in Stack"),

          ],
        ),
        const SizedBox(
          height: RSizes.sm,
        ),
        const Row(
          children: [
            RCircularImage(imagePath: RImages.shoesName, isNetworkImage: false,width: 40,height: 40,),
            RBrandTitleWithVerifiedIcon(title: "Nike",brandTextSize: TextSizes.medium,),
          ],
        )

      ],
    );
  }
}
