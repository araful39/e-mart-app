import 'package:e_mart/common/widgets/appbar/appbar.dart';

import 'package:e_mart/common/widgets/products/product-quntity_add_remove.dart';
import 'package:e_mart/common/widgets/products/product_price_text.dart';

import 'package:e_mart/features/shop/screens/cart/widget/cart_item.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context, _) => Column(
                  children: [
                    const RCartItem(
                      imagePath: RImages.shoes5,
                      isNetworkImage: false,
                      brandTitle: "Nike",
                      productTitle: "Black Sports Shoe",
                    ),
                    const SizedBox(
                      height: RSizes.sm,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 90,
                            ),
                            RProductQuantityAddRemove(
                              count: 1,
                              onTapAdd: () {},
                              onTapRemove: () {},
                            ),
                          ],
                        ),
                        const RProductPriceText(price: "40.2")
                      ],
                    )
                  ],
                ),
            separatorBuilder: (_, __) => const SizedBox(
                  height: RSizes.sm,
                ),
            itemCount: 10
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$400'),
        ),
      ),
    );
  }
}
