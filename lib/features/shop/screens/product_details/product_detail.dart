import 'package:e_mart/common/widgets/button/elevated_button.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/bottom_add_to_cart_widget.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/product_details_images_slider.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/product_rating_and_share.dart';
import 'package:e_mart/features/shop/screens/product_review_and_rating/product_review_and_rating.dart';
import 'package:e_mart/utills/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

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
                  const ReadMoreText(
                    "You can use shape property of the Chip widget. In that property you can pass RoundedRectangleBorder() and mention borderRadius inside of the RoundedRectangleBorder(). There are other ShapeBorders like BeveledRectangleBorder(), StadiumBorder(),OutlineInputBorder(),ContinuousRectangleBorder() and so on.You can use shape property of the Chip widget. In that property you   can pass RoundedRectangleBorder() and mention borderRadius inside of the RoundedRectangleBorder(). There are other ShapeBorders like BeveledRectangleBorder(), S    tadiumBorder(),OutlineInputBorder(),ContinuousRectangleBorder() and so on.",

                    trimLength:100 ,
                    colorClickableText: Colors.indigo,
                    trimCollapsedText: "Show more",
                    moreStyle: TextStyle(color: Colors.indigo),
                    trimExpandedText: "Show less",
                    lessStyle: TextStyle(color: Colors.indigo),
                  ),


                  const SizedBox(
                    height: RSizes.sm,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: RSizes.defaultSpace,
                  ),
                  RSectionHeading(name: "Reviews(199)",onpress: (){
                    Get.to(()=>  const ProductReviewScreen());
                  },showActionButton: true,buttonColor: Colors.indigo,subText: "view now",)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



