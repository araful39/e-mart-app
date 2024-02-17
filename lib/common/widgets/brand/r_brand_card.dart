import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/images/r_circular_image.dart';
import 'package:e_mart/common/widgets/texts/brand_title_width_verified_icon.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/enums.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
class RBrandCard extends StatelessWidget {
  const RBrandCard({
    super.key, 
    required this.showBorder,
    this.onTap,
  });
  
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RRoundedContainer(
        borderColor: showBorder? RColores.dark: Colors.white,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(RSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Flexible(
              flex: 1,
                child: RCircularImage(
                  imagePath: RImages.shoesName, isNetworkImage: false,
                )),
            // const SizedBox(width: 2,),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const RBrandTitleWithVerifiedIcon(
                    title: "Nike",
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "256 products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}