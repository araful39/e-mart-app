import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/images/r_circular_image_with_container.dart';

import 'package:e_mart/features/shop/screens/cart/widget/cart_item.dart';
import 'package:e_mart/utills/constants/icons.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RAppBar(
        showBackArrow: true,
        title: Text("Cart"),
      ),
      body: ListView.separated(
          itemBuilder: (context, _)=>  Column(
            children: [
              const RCartItem(imagePath: RImages.shoes5, isNetworkImage: false, brandTitle: "Nike", productTitle: "Black Sports Shoe",),
              Row(
                children: [
                  RCircularImage(imagePath: RIcons.minus, isNetworkImage: false),
                ],
              )
              
            ],
          ),
          separatorBuilder: (_, __) => const SizedBox(
                height: RSizes.sm,
              ),
          itemCount: 4),
    );
  }
}


