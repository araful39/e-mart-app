
import 'package:flutter/material.dart';

import '../../../../utills/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer(
      {super.key,
      this.width,
      this.height,
     this.radius,
  this.child,
    this.borderColor,
    this.backgroundColor,
      this.padding,
      this.margin});
  final double? width;
  final double? height;
  final double? radius;
  final Widget? child;
  final Color? borderColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius??TSizes.cardRadiusLg),
        border: Border.all(color: borderColor ?? Colors.grey.withOpacity(0.1))
      ),
      child: child,
    );
  }
}
