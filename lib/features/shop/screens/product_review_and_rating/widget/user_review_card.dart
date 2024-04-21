import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/images/t_circular_image_with_clipOval.dart';
import 'package:e_mart/common/widgets/products/rating/r_rating_bar_indicator.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class RUserReviewCard extends StatelessWidget {
  const RUserReviewCard({
    super.key, required this.imagePath, required this.isNetworkImage, required this.name,
  });
  final String name;
  final String imagePath;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   RCircularImageWithClipOval(
                      isNetworkImage: isNetworkImage,
                      height: 50,
                      width: 50,
                      imagePath:imagePath),
                  const SizedBox(
                    width: TSizes.sm,
                  ),
                  Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              ),
              IconButton(onPressed: () {

              }, icon: const Icon(Icons.more_vert))
            ],
          ),
          const RRatingBarIndicator(
            rating: 5.0,
            date: "7-March-2024",
          ),
          const SizedBox(
            height: TSizes.sm,
          ),
           const ReadMoreText("This guide to review excellence will outline 12 examples of how brands successfully upped their review-game, making sure that positive, accurate feedback is the most visible. quickly touch on what great product review management can impact your brands success, then move on to our examples. Click through to the section you find most relevant. ",

             trimLength:100 ,
            colorClickableText: Colors.indigo,
            trimCollapsedText: "Show more",
            moreStyle: TextStyle(color: Colors.indigo),
            trimExpandedText: "Show less",
             lessStyle: TextStyle(color: Colors.indigo),
          )
      ,   const SizedBox(
            height: TSizes.sm,
          ),


       const TRoundedContainer(

             backgroundColor: RColores.grey,
             child:  Padding(
               padding: EdgeInsets.all(8.0),
               child: Column(

                 children: [
                   RSectionHeading(name: "T`s Store",subText: "07-March-2024",showActionButton: true,),

                   ReadMoreText(
                     "This guide to review excellence will outline 12 examples of how brands successfully upped their review-game, making sure that positive, accurate feedback is the most visible. quickly touch on what great product review management can impact your brands success, then move on to our examples. Click through to the section you find most relevant. ",
                     trimLength:100 ,
                     colorClickableText: Colors.indigo,
                     trimCollapsedText: "Show more",
                     moreStyle: TextStyle(color: Colors.indigo),
                     trimExpandedText: "Show less",
                     lessStyle: TextStyle(color: Colors.indigo),
                   ),
                 ],
               ),
             ),
           )

        ],
      ),
    );
  }
}
