import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/brand/r_brand_card.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class RBrandShowCase extends StatelessWidget {
  const RBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RRoundedContainer(
      borderColor: RColores.darkGery,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(RSizes.sm),
      margin: const EdgeInsets.only(bottom: RSizes.spaceBtwItems),
      child: Column(
        children: [
          const RBrandCard(
            showBorder: false,
            brandImagePath: RImages.shoesName,
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
      child: RRoundedContainer(
    height: 70,
    backgroundColor: RColores.light,
    padding: const EdgeInsets.all(RSizes.sm),
    margin: const EdgeInsets.only(right: RSizes.sm),
    child: Image(
      image: AssetImage(image),
      fit: BoxFit.contain,
    ),
  ));
}
