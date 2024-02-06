import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width,
    this.height,
    required this.radius,
    this.child,
    required this.backgroundColor,
    required this.padding,
  });
  final double? width;
  final double? height;
  final double? radius;
  final Widget? child;
  final Color? backgroundColor;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 300,
      width: width ?? 300,
      padding: EdgeInsets.all(padding ?? 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 300),
        color: backgroundColor ?? RColores.textWhite,
      ),
      child: child,
    );
  }
}