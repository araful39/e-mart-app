import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class RRatingBarIndicator extends StatelessWidget {
  const RRatingBarIndicator({
    super.key, required this.rating, this.itemCount, this.unratedColor, this.iconColor, this.icon, this.date,
  });

  final double rating;
  final int? itemCount;
  final Color? unratedColor;
  final Color? iconColor;
  final IconData? icon;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBarIndicator(
            rating: rating,
            unratedColor: unratedColor?? Colors.grey,
            itemSize: 20,
            direction: Axis.horizontal,
            itemCount:itemCount?? 5,
            itemBuilder: (_,__){
              return  Icon(icon ?? Icons.star,color: iconColor?? Colors.amber,);
            }),
        const SizedBox(
          width: RSizes.sm ,
        ),
         Text(date ?? "")
      ],    );
  }
}