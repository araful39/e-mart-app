import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/appbar/tapbar.dart';
import 'package:e_mart/common/widgets/layout/grid_layout.dart';
import 'package:e_mart/common/widgets/products/cart_menu_icon.dart';
import 'package:e_mart/common/widgets/brand/t_brand_card.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_searchbar.dart';
import 'package:e_mart/features/shop/screens/shop/widget/category_tab.dart';
import 'package:e_mart/features/shop/screens/shop/view_brand.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            RCardCounterIcon(
              onpress: () {},
              iconColor: RColores.black,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: RColores.white,
                expandedHeight: 340,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.sm),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: TSizes.lg,
                      ),
                      const RSearchContainer(
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.defaultBtwSections / 3,
                      ),
                      RSectionHeading(
                        name: "Featured Brands",
                        showActionButton: true,
                        subText: "view all",
                        onpress: () => Get.to(() => const AllBrand()),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      RGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 60,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: const TBrandCard(
                                showBorder: true,
                                brandImagePath: TImages.shoesName,
                                brandName: 'Nike',
                                productQuantity: 250,
                                isNetworkImage: false,
                              ),
                            );
                          })
                    ],
                  ),
                ),
                bottom: const TTapBar(
                  tabs: [
                    Text("Sports"),
                    Text("Furniture"),
                    Text("Electronics"),
                    Text("Clothes"),
                    Text("Cosmetics"),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              RCategoryTap(
                images: [TImages.shoes1, TImages.shoes2, TImages.shoes3],
                gridImage: [
                  TImages.shoes3,
                  TImages.shoes2,
                  TImages.shoes2,
                  TImages.shoes3,
                  TImages.shoes2,
                  TImages.shoes2,
                ],
              ),
              RCategoryTap(
                images: [],
                gridImage: [],
              ),
              RCategoryTap(
                images: [],
                gridImage: [],
              ),
              RCategoryTap(
                images: [],
                gridImage: [],
              ),
              RCategoryTap(
                images: [],
                gridImage: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
