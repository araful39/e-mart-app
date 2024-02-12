import 'package:flutter/material.dart';

class RProductPriceText extends StatelessWidget {
  const RProductPriceText({
    super.key,
    this.currencySign = "\$",
    required this.price,
   this.maxLines,
    this.isLarge = false,
    this.lineThrough = false,
  });
  final String currencySign, price;
  final int? maxLines;
  final bool isLarge;
  final bool lineThrough;
  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
