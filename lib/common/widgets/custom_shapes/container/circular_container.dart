import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class RCircularContainer extends StatelessWidget {
  const RCircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.child,
    required this.backgroundColor,
 this.padding, this.margin,
  });
  final double? width;
  final double? height;
  final double? radius;
  final Widget? child;
  final Color? backgroundColor;
  final double? padding;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 300,
      width: width ?? 300,
      margin: margin,
      padding: EdgeInsets.all(padding ?? 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 300),
        color: backgroundColor ?? RColores.textWhite,
      ),
      child: child,
    );
  }
}