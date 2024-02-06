import 'package:e_mart/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_mart/common/widgets/text/section_heading.dart';

import 'package:e_mart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_mart/features/shop/screens/home/widgets/home_searchbar.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          RPrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RHomeAppBar(),
                const SizedBox(
                  height: RSizes.defaultBtwItems,
                ),
                const RSearchContainer(),
                const SizedBox(
                  height: RSizes.defaultBtwItems,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: RSizes.defaultBtwSections),
                  child: Column(
                    children: [
                 const RSectionHeading(text: "Popular Categorize"),
                      const SizedBox(
                        height: RSizes.defaultBtwItems,
                      ),
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_,index){
                         return Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                              children: [
                              Container(
                                height: 56,
                                width: 60,
                                padding: const EdgeInsets.all(RSizes.sm),
                                decoration: BoxDecoration(
                                  color: RColores.white,
                                  borderRadius: BorderRadius.circular(100)
                                ),

                                child: const Center(
                                  child: Image(image: AssetImage(RImages.facebook),fit: BoxFit.cover,),
                                ),
                              )
                              ],
                            ),
                         );
                        }),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}


