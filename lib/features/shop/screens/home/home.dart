import 'package:e_mart/common/widgets/custom_shapes/container/primary_header_container.dart';

import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_searchbar.dart';
import 'package:e_mart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_mart/utills/constants/image_strings.dart';

import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../utills/constants/colors.dart';
import '../product_details/product_detail.dart';

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
                  padding: EdgeInsets.only(left: RSizes.spaceBtwItems),
                  child: Column(
                    children: [
                      RSectionHeading(text: "Popular Categorize",buttonTitle: "view all",showActionButton: true,textColor: RColores.white,),
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
           Padding(
             padding: const EdgeInsets.only(left: RSizes.spaceBtwItems,right: RSizes.spaceBtwItems),
             child: Column(
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
                 RSectionHeading(text: "Popular Products",buttonTitle: "view all",onpress: (){},showActionButton: true,),
                 const SizedBox(
                   height: RSizes.sm,
                 ),
                 RGridLayout(itemCount: 5, itemBuilder: (_ , index ) {
                   return GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailScreen()));
                         print("click");
                       },
                       child: const RProductCardVertical(imagePath: RImages.shoes3,));
                 },)
               ],
             ),
           ),



        ],
      ),
    ));
  }
}


