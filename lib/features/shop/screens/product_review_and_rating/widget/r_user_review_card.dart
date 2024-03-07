import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/images/r_circular_image_with_clipOval.dart';
import 'package:e_mart/common/widgets/products/rating/r_rating_bar_indicator.dart';
import 'package:e_mart/common/widgets/texts/r_text_show_and_less.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/features/shop/controllers/product_review_screen_controller.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RUserReviewCard extends StatelessWidget {
  const RUserReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(ProductReviewAndRatingController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const RCircularImageWithClipOval(
                    isNetworkImage: true,
                    height: 50,
                    width: 50,
                    imagePath:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF4t151iDo_RZ6Nut5W-B3pTxXa2vp0FftD4jX2u3WAIqluuCGRWTd6XYzWgqmqOk9xq4&usqp=CAU"),
                const SizedBox(
                  width: RSizes.sm,
                ),
                Text(
                  "Raju Islam",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const RRatingBarIndicator(
          rating: 5.0,
          date: "7-March-2024",
        ),
        const SizedBox(
          height: RSizes.sm,
        ),
        Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "This guide to review excellence will outline 12 examples of how brands successfully upped their review-game, making sure that positive, accurate feedback is the most visible. quickly touch on what great product review management can impact your brands success, then move on to our examples. Click through to the section you find most relevant. ",
              maxLines: controller.isExpanded.value ? 12: 2,overflow: TextOverflow.ellipsis,
            ),
            RTextShowAndLese(text: controller.isExpanded.value? "skip": "read more", onTap: ()=>controller.toggleExpanded(),),
          ],
        ),),


        const RRoundedContainer(

          backgroundColor: RColores.grey,
          child:  Column(

            children: [
              RSectionHeading(name: "T`s Store",subText: "07-March-2024",showActionButton: true,),
              Text("Raju")
            ],
          ),
        )

      ],
    );
  }
}
