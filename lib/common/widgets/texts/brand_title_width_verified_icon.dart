import 'package:e_mart/common/widgets/texts/r_brand_title_text.dart';
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
    this.iconColor = TColores.primary,
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
        Flexible(
          child: RBrandTitleText(
            title: title,
            maxLines: maxLines,
            textColor: textColor,
            textAlign: textAlign,
            brandTextSizes: brandTextSize,
          ),
        ),
        const SizedBox(
          width: TSizes.xs,
        ),
        const Icon(
          Icons.verified,
          color: TColores.primary,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}
