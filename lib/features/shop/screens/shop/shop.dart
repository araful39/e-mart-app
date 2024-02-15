import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/appbar/tapbar.dart';
import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/images/r_circular_image.dart';
import 'package:e_mart/common/widgets/layout/grid_layout.dart';
import 'package:e_mart/common/widgets/products/cart_menu_icon.dart';
import 'package:e_mart/common/widgets/texts/brand_title_width_verified_icon.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_searchbar.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/enums.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';

import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: RAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            RCardCounterIcon(
              onpress: () {},
              iconColor: RColores.black,
            )
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
                expandedHeight: 380,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(RSizes.sm),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const RSearchContainer(
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: RSizes.defaultBtwSections,
                      ),
                      RSectionHeading(
                        text: "Featured Brands",
                        showActionButton: true,
                        onpress: () {},
                      ),
                      const SizedBox(
                        height: RSizes.spaceBtwItems / 1.5,
                      ),
                      RGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: RRoundedContainer(
                                padding: const EdgeInsets.all(RSizes.xs),
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    const Flexible(
                                        child: RCircularImage(
                                      imagePath: RImages.shoes,
                                    )),
                                    // const SizedBox(width: 2,),
                                    Flexible(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const RBrandTitleWithVerifiedIcon(
                                            title: "Nike",
                                            brandTextSize: TextSizes.large,
                                          ),
                                          Text(
                                            "256 products",
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
                bottom: const RTapBar(tabs: [

                  Text("Sports"),
                  Text("Furniture"),
                  Text("Electronics"),
                  Text("Clothes"),
                  Text("Cosmetics"),

                ],),
              ),
            ];
          },
          body: TabBarView(children: [],),
        ),
      ),
    );
  }
}


