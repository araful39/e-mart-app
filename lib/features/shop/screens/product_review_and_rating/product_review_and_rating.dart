import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/products/rating/r_rating_bar_indicator.dart';
import 'package:e_mart/features/shop/screens/product_review_and_rating/widget/over_all_ratings.dart';
import 'package:e_mart/features/shop/screens/product_review_and_rating/widget/user_review_card.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text("Reviews & Ratings"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.cardRadiusLg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Product Ratings are shown in ads and free product listings, appearing as 1 to 5-star ratings that also display the total number of reviews for the product."),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const ROverAllRatings(),
              const RRatingBarIndicator(rating: 3.5,),
              Text("12,611",style: Theme.of(context).textTheme.bodyMedium,),
               const SizedBox(
                 height: TSizes.sm,
               ),
               const RUserReviewCard(imagePath: TImages.profile, isNetworkImage: false, name: "Raju Islam",),
               const RUserReviewCard(imagePath: TImages.profile, isNetworkImage: false, name: "Raju Islam",),
              const RUserReviewCard(imagePath: TImages.profile, isNetworkImage: false, name: "Raju Islam",),
                const RUserReviewCard(imagePath: TImages.profile, isNetworkImage: false, name: "Raju Islam",),


            ],
          ),
        ),
      ),
    );
  }
}




