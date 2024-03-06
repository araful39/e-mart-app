import 'package:e_mart/common/widgets/button/elevated_button.dart';
import 'package:e_mart/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_mart/common/widgets/images/r_circular_image_with_container.dart';
import 'package:e_mart/features/shop/controllers/product_detail_controller.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/icons.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class RBottomAddToCart extends StatelessWidget {
  const RBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(ProductDetailController());
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: RSizes.defaultSpace, vertical: RSizes.defaultSpace / 2),
      decoration: const BoxDecoration(
          color: RColores.light,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(RSizes.cardRadiusLg),
              topRight: Radius.circular(RSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                controller.decrement();

                },
                child: RCircularContainer(
                  height: 40,
                  width: 40,
                  backgroundColor: RColores.darkGery,
                  child: RCircularImage(
                    imagePath: RIcons.minus,
                    isNetworkImage: false,
                  ),
                ),
              ),
     Obx(() =>      Padding(
           padding: const EdgeInsets.symmetric(horizontal: RSizes.md),
           child: Text(
             controller.productCount.value.toString(),
             style: Theme.of(context).textTheme.headlineLarge,
           ),
     ),),
              InkWell(
                onTap: () {
                controller.increment();

                },
                child: RCircularContainer(
                  height: 40,
                  width: 40,
                  backgroundColor: RColores.darkGery,
                  child: RCircularImage(
                    imagePath: RIcons.add,
                    isNetworkImage: false,
                  ),
                ),
              )
            ],
          ),
          RElevatedButton(name: "Add To Card", onPressed: (){},width: 200,backgroundColor: RColores.darkGery,)
        ],
      ),
    );
  }
}
