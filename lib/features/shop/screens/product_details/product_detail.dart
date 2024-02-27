import 'package:e_mart/features/shop/screens/product_details/widget/product_details_images_slider.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:e_mart/features/shop/screens/product_details/widget/product_rating_and_share.dart';
import 'package:e_mart/utills/constants/sizes.dart';

import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
          RProductImageSlider(),
          Padding(
            padding: EdgeInsets.only(
                left: RSizes.defaultSpace,
                right: RSizes.defaultSpace,
                bottom: RSizes.defaultSpace),
            child: Column(
              children: [
                RRatingAndShare(),
                RProductMetaData(),
              ],
            ),
          )
        ],
      ),
    );
  }
}


