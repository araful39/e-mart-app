import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';

class TCardCounterIcon extends StatelessWidget {
  const TCardCounterIcon({
    super.key, required this.iconColor, required this.onpress,
  });
  final Color iconColor;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Badge(
          label: Text(
            "5",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(
                color: TColores.white, fontSizeFactor: 0.8),
          ),
          child: const Icon(
            Icons.shopping_cart,
            color: TColores.white,
          ),
        ),
      ),
    );
  }
}