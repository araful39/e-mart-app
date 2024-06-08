import 'package:e_mart/common/widgets/brand/brand_show_case.dart';
import 'package:e_mart/common/widgets/layout/grid_layout.dart';
import 'package:e_mart/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
class RCategoryTap extends StatelessWidget {
  const RCategoryTap({
    super.key, required this.images, required this.gridImage,
  });
  final List<String> images;
  final List<String> gridImage;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding:  const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
             TBrandShowCase(
              images: images,
            ),
            RSectionHeading(name: "You might like",onpress: (){},showActionButton: true,),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            RGridLayout(itemCount: gridImage.length, itemBuilder: (_,index){
              return  RProductCardVertical(imagePath: gridImage[index],);
            })
          ],
        ),
      ),
    );
  }
}