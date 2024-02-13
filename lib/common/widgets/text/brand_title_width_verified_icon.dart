import 'package:flutter/material.dart';

import '../../../utills/constants/colors.dart';
import '../../../utills/constants/enums.dart';
import '../../../utills/constants/sizes.dart';
class RBrandTitleWithVerifiedIcon extends StatelessWidget {
  const RBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = RColores.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: maxLines,
          style:
          Theme.of(context).textTheme.labelMedium?.apply(color: textColor),
        ),
        const SizedBox(
          width: RSizes.xs,
        ),
        const Icon(
          Icons.verified,
          color: RColores.primary,
          size: RSizes.iconXs,
        )
      ],
    );
  }
}