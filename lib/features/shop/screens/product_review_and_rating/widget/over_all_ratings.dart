import 'package:e_mart/features/shop/screens/product_review_and_rating/widget/r_rating_progres_indicator.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
class ROverAllRatings extends StatelessWidget {
  const ROverAllRatings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("4.8",style: Theme.of(context).textTheme.displayLarge,),
        const SizedBox(
          width: RSizes.spaceBtwItems,
        ),
          const Flexible(
          flex: 4,
          child: Column(
            children: [
              RRatingsProgresIndicator(ratingCount: '5', value: 1,),
              RRatingsProgresIndicator(ratingCount: '4', value: 0.7,),
              RRatingsProgresIndicator(ratingCount: '3', value: 0.5,),
              RRatingsProgresIndicator(ratingCount: '2', value: 0.3,),
              RRatingsProgresIndicator(ratingCount: ' 1', value: 0.2,),

            ],
          ),
        )
      ],
    );
  }
}