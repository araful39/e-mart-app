import 'package:e_mart/common/widgets/button/elevated_button.dart';
import 'package:e_mart/common/widgets/products/product-quntity_add_remove.dart';
import 'package:e_mart/features/shop/controllers/product_detail_controller.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RBottomAddToCart extends StatelessWidget {
  const RBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(ProductDetailController());
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(
        horizontal: TSizes.sm,
         vertical: TSizes.defaultSpace / 2),
      decoration: const BoxDecoration(
          color: RColores.light,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(TSizes.cardRadiusLg),
              topRight: Radius.circular(TSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: Obx(()=> RProductQuantityAddRemove(count: controller.productCount.value, onTapAdd: ()=>controller.increment(), onTapRemove: ()=>controller.decrement(),)),
          ),
          Flexible(
              flex: 4,
              child: TElevatedButton(name: "Add To Card", onPressed: (){},backgroundColor: RColores.darkGery,))
        ],
      ),
    );
  }
}
