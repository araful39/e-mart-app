import 'package:e_mart/common/widgets/button/elevated_button.dart';
import 'package:e_mart/common/widgets/texts/r_text_show_and_less.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/features/shop/controllers/product_detail_controller.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/bottom_add_to_cart_widget.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/product_details_images_slider.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/product_rating_and_share.dart';
import 'package:e_mart/features/shop/screens/product_review_and_rating/product_review_and_rating.dart';
import 'package:e_mart/utills/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailController productDetailController =
        Get.put(ProductDetailController());
    return Scaffold(
      bottomNavigationBar: const RBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  left: RSizes.defaultSpace,
                  right: RSizes.defaultSpace,
                  bottom: RSizes.defaultSpace),
              child: Column(
                children: [
                  const RRatingAndShare(),
                  const RProductMetaData(),
                  const RProductAttributes(),
                  const SizedBox(
                    height: RSizes.sm,
                  ),
                  RElevatedButton(
                    name: 'Cheat Out',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: RSizes.sm,
                  ),
                  const RSectionHeading(name: "Description"),
                  Obx(
                    () => Text(
                      "You can use shape property of the Chip widget. In that property you can pass RoundedRectangleBorder() and mention borderRadius inside of the RoundedRectangleBorder(). There are other ShapeBorders like BeveledRectangleBorder(), StadiumBorder(),OutlineInputBorder(),ContinuousRectangleBorder() and so on.You can use shape property of the Chip widget. In that property you   can pass RoundedRectangleBorder() and mention borderRadius inside of the RoundedRectangleBorder(). There are other ShapeBorders like BeveledRectangleBorder(), S    tadiumBorder(),OutlineInputBorder(),ContinuousRectangleBorder() and so on.",
                      maxLines:
                          productDetailController.isExpanded.value ? 12 : 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Obx(
                    () => RTextShowAndLese(text:productDetailController.isExpanded.value
                        ? "Show less "
                        : " Show more", onTap: () => productDetailController.toggleExpand(),),
                  ),
                  const SizedBox(
                    height: RSizes.sm,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: RSizes.defaultSpace,
                  ),
                  RSectionHeading(name: "Reviews(199)",onpress: (){
                    Get.to(()=> const ProductReviewScreen());
                  },showActionButton: true,subText: "view now",)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

