import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/brand/t_brand_card.dart';
import 'package:e_mart/common/widgets/layout/grid_layout.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllBrand extends StatelessWidget {
  const AllBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text("Brand"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const RSectionHeading(name: "Brands"),
              const SizedBox(
                height: TSizes.md,
              ),
              RGridLayout(
                  mainAxisExtent: 70,
                  itemCount: 50,
                  itemBuilder: (_, __) {
                    return const TBrandCard(
                        showBorder: true,
                        brandImagePath: TImages.shoesName,
                        brandName: "Nike",
                        productQuantity: 300,
                        isNetworkImage: false);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
