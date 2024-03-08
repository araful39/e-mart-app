import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/images/r_circular_image_with_container.dart';
import 'package:e_mart/common/widgets/texts/brand_title_width_verified_icon.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/enums.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class RBrandCard extends StatelessWidget {
  const RBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
    required this.brandImagePath,
    required this.brandName,
    required this.productQuantity,
    required this.isNetworkImage,
    this.height,
  });

  final bool showBorder;
  final void Function()? onTap;
  final String brandImagePath;
  final String brandName;
  final int productQuantity;
  final bool isNetworkImage;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RRoundedContainer(
        height: height ?? 90,
        borderColor: showBorder ? RColores.dark : Colors.white,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(RSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                flex: 1,
                child: RCircularImage(
                  imagePath: brandImagePath,
                  isNetworkImage: isNetworkImage,
                )),
            // const SizedBox(width: 2,),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RBrandTitleWithVerifiedIcon(
                    title: brandName,
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "$productQuantity products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
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
