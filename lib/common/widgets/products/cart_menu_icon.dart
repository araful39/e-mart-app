import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';

class RCardCounterIcon extends StatelessWidget {
  const RCardCounterIcon({
    super.key,  this.iconColor, required this.onpress,
  });
  final Color? iconColor;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onpress,
        child: Badge(
          label: Text(
            "5",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(
                color: TColores.white, fontSizeFactor: 0.8),
          ),
          child:  Icon(
            Icons.shopping_cart,
            color: iconColor ?? TColores.white,
          ),
        ),
      ),
    );
  }
}