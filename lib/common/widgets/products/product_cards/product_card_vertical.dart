import 'package:e_mart/common/styles/shadow_styles.dart';
import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/icons/t_circular_icon.dart';
import 'package:e_mart/common/widgets/images/t_rounded_image.dart';
import 'package:e_mart/common/widgets/products/product_title_text.dart';
import 'package:e_mart/common/widgets/texts/brand_title_width_verified_icon.dart';
import 'package:e_mart/utills/constants/colors.dart';


import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';


import '../product_price_text.dart';

class RProductCardVertical extends StatelessWidget {
  const RProductCardVertical({
    super.key, required this.imagePath,
  });
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,

      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: TColores.white),
      child: Column(
        children: [
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.xs),
            child: Stack(
              children: [
                Positioned(
                  bottom: 10,
                  child: RRoundedImage(

                      imageUrl:imagePath,
                      height: 100,
                      isNetworkImage: false),
                ),
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColores.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      "%25",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.apply(color: TColores.black),
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    top: 0,
                    child: TCircularIcon(
                      onPress: () {},
                      icon: Icons.favorite,
                      color: TColores.error,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems / 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RProductTitleText(
                  title: 'Green Nike Air Shoes',
                  smallSize: true,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems / 2,
                ),
                 const RBrandTitleWithVerifiedIcon(
                  title: 'Nike',
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const RProductPriceText(
                        price: '30.0',
                      ),
                      InkWell(
                        onTap: () {
                          Get.dialog(
                              transitionDuration: Duration(seconds: 1),
                              barrierDismissible: false,
                            Dialog(
                              backgroundColor: TColores.white,
                              child: SizedBox(
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("Product Add",style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
                                      SizedBox(
                                        height: TSizes.defaultSpace,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          ElevatedButton(onPressed: ()=>Get.back(), child: Text("Yess ")),
                                          ElevatedButton(onPressed:  ()=>Get.back(), child: Text("No ")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            )

                          );

                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              color: TColores.dark,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(TSizes.cardRadiusMd),
                                  bottomRight: Radius.circular(
                                      TSizes.productImageRadius))),
                          child: const SizedBox(
                              height: TSizes.iconLg * 1.2,
                              width: TSizes.iconLg * 1.2,
                              child: Center(
                                  child: Icon(
                                Icons.add,
                                color: TColores.white,
                              ))),
                        ),
                      )
                    ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
