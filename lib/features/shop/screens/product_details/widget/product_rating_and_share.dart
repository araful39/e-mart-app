import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
class RRatingAndShare extends StatelessWidget {
  const RRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.orangeAccent,
            ),
            SizedBox(
              width: TSizes.sm,
            ),
            Text("5.0"),
            Text("(199)")
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share))
      ],
    );
  }
}