import 'package:e_mart/common/widgets/brand/brand_show_case.dart';
import 'package:e_mart/common/widgets/layout/grid_layout.dart';
import 'package:e_mart/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
class RCategoryTap extends StatelessWidget {
  const RCategoryTap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          children: [
            const RBrandShowCase(
              images: [
                RImages.shoes3,
                RImages.shoes2,
                RImages.shoes1
              ],
            ),
            RSectionHeading(text: "You might like",onpress: (){},showActionButton: true,),
            const SizedBox(
              height: RSizes.spaceBtwItems,
            ),
            RGridLayout(itemCount: 4, itemBuilder: (_,index){
              return const RProductCardVertical();
            })
          ],
        ),
      ),
    );
  }
}