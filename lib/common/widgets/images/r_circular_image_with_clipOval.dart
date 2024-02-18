import 'package:flutter/material.dart';

class RCircularImageWithClipOval extends StatelessWidget {
  const RCircularImageWithClipOval({
    super.key,
    required this.isNetworkImage,
    required this.imagePath, this.height, this.width, this.boxFit,
  });
  final bool isNetworkImage;
  final String imagePath;
  final double? height,width;
  final BoxFit? boxFit;


  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: isNetworkImage
          ? Image.network(
              imagePath,
              fit: boxFit??BoxFit.cover,
              width: width ?? 90.0,
              height: height ?? 90.0,
            )
          : Image.asset(
              imagePath,
              fit: boxFit ?? BoxFit.cover,
              width: width ?? 90.0,
              height: height ?? 90.0,
            ),
    );
  }
}
