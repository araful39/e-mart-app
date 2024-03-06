import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/features/shop/screens/product_review_screen/widget/over_all_ratings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      appBar: RAppBar(
        showBackArrow: true,
        title: Text("Reviews & Ratings"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              Text(
                  "Product Ratings are shown in ads and free product listings, appearing as 1 to 5-star ratings that also display the total number of reviews for the product."),
              SizedBox(
                height: RSizes.spaceBtwItems,
              ),
              ROverAllRatings()

            ],
          ),
        ),
      ),
    );
  }
}




