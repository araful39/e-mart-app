import 'package:e_mart/common/widgets/custom_shapes/container/primary_header_container.dart';

import 'package:e_mart/common/widgets/text/section_heading.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_searchbar.dart';
import 'package:e_mart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_mart/utills/constants/image_strings.dart';

import 'package:e_mart/utills/constants/sizes.dart';

import 'package:flutter/material.dart';

import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const RPrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RHomeAppBar(),
                RSearchContainer(),
                Padding(
                  padding: EdgeInsets.only(left: RSizes.defaultBtwItems),
                  child: Column(
                    children: [
                      RSectionHeading(text: "Popular Categorize"),
                      SizedBox(
                        height: RSizes.sm,
                      ),
                      RHomeCategories(),
                    ],
                  ),
                ),
              ],
            ),
          ),
           Column(
             children: [
               const RPromoSlider(
                 banners: [
                   RImages.banners1,
                   RImages.banners2,
                   RImages.banners3,
                   RImages.banners4,
                 ],
               ),
               const SizedBox(
                 height: RSizes.sm,
               ),
               RGridLayout(itemCount: 2, itemBuilder: (_ , index ) {
                 return const RProductCardVertical();
               },)
             ],
           ),



        ],
      ),
    ));
  }
}


