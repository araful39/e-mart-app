import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class RRoundedImage extends StatelessWidget {
  const RRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,

    this.imageRadius,
    this.border,
    this.backgroundColor,
    this.fit,
    this.padding,
required this.isNetworkImage,
    this.onPress,
  });
  final double? width, height;
  final String imageUrl;
  final double? imageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsets? padding;
  final bool isNetworkImage;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor ?? RColores.white,
          borderRadius:
          BorderRadius.circular(RSizes.xs)
          ,
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(imageRadius ?? RSizes.md),
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}