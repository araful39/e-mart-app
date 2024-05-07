import 'package:e_mart/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_mart/common/widgets/layout/grid_layout.dart';
import 'package:e_mart/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/features/shop/controllers/home_controller.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_searchbar.dart';
import 'package:e_mart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_mart/features/shop/screens/product_details/product_detail.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/image_strings.dart';

import 'package:e_mart/utills/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller= Get.put(HomeController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
           TPrimaryHeaderContainer(
             headerHeight: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RHomeAppBar(),
                RSearchContainer(onpress: (){

                },),
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.spaceBtwItems),
                  child: Column(
                    children: [
                      RSectionHeading(name: "Popular Categorize",subText: "view all",showActionButton: true,textColor: RColores.white,),
                      SizedBox(
                        height: TSizes.sm,
                      ),
                      RHomeCategories(),
                    ],
                  ),
                ),
              ],
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(left: TSizes.spaceBtwItems,right: TSizes.spaceBtwItems),
             child: Column(
               children: [
                  const RPromoSlider(

                 ),
                 const SizedBox(
                   height: TSizes.sm,
                 ),
                 RSectionHeading(name: "Popular Products",subText: "view all",onpress: (){},showActionButton: true,),
                 const SizedBox(
                   height: TSizes.sm,
                 ),
                 RGridLayout(itemCount: 5, itemBuilder: (_ , index ) {
                   return GestureDetector(
                       onTap: (){

                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetailScreen()));

                       },
                       child: const RProductCardVertical(imagePath: TImages.shoes3,));
                 },)
               ],
             ),
           ),



        ],
      ),
    ));
  }
}


