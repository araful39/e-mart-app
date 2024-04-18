import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/brand/t_brand_card.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      borderColor: TColores.darkGery,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.sm),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const TBrandCard(
            showBorder: false,
            brandImagePath: TImages.shoesName,
            brandName: 'Panda',
            productQuantity: 100,
            isNetworkImage: false,
          ),
          Row(
            children: images
                .map((image) => brandTopProductImagesWidget(image))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImagesWidget(String image) {
  return Expanded(
      child: TRoundedContainer(
    height: 70,
    backgroundColor: TColores.light,
    padding: const EdgeInsets.all(TSizes.sm),
    margin: const EdgeInsets.only(right: TSizes.sm),
    child: Image(
      image: AssetImage(image),
      fit: BoxFit.contain,
    ),
  ));
}
