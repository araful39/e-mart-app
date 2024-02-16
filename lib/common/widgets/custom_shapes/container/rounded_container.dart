
import 'package:flutter/material.dart';

import '../../../../utills/constants/sizes.dart';

class RBrandCard extends StatelessWidget {
  const RBrandCard(
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
        borderRadius: BorderRadius.circular(radius??RSizes.cardRadiusLg),
        border: Border.all(color: borderColor ?? Colors.grey.withOpacity(0.8))
      ),
      child: child,
    );
  }
}
