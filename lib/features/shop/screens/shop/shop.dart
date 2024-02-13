import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/images/r_circular_image.dart';
import 'package:e_mart/common/widgets/products/cart_menu_icon.dart';
import 'package:e_mart/common/widgets/text/section_heading.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_searchbar.dart';
import 'package:e_mart/utills/constants/image_strings.dart';

import 'package:flutter/material.dart';

import '../../../../utills/constants/colors.dart';
import '../../../../utills/constants/sizes.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:
      RAppBar(
        title: Text("Store",style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          RCardCounterIcon(onpress: (){},iconColor: RColores.black,)
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: RColores.white,
            expandedHeight: 440,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(RSizes.sm),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children:  [
                  const SizedBox(
                    height: RSizes.xs,
                  ),
                  const RSearchContainer(padding: EdgeInsets.zero,),
                  const SizedBox(
                    height: RSizes.defaultBtwSections,
                  ),
                  RSectionHeading(text: "Featured Brands",showActionButton: true,onpress: (){},),
                  const SizedBox(
                    height: RSizes.defaultBtwItems/1.5,
                  ),
                  const RRoundedContainer(
                    padding: EdgeInsets.all(RSizes.sm),
                    backgroundColor: Colors.transparent,
                    child: Row(
                      children: [
                        RCircularImage(imagePath:     RImages.cloth,),
                        RCircularImage(imagePath:     RImages.shoes,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ];
      }, body: const Text("Raju"),),
    );
  }
}


