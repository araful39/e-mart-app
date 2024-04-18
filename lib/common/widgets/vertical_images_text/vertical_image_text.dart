import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class RVerticalImageText extends StatelessWidget {
  const RVerticalImageText({
    super.key,
    required this.text,
    required this.netImagePath,
    this.backgroundColor,
   this.textColor,
   this.onpress,
  });
  final String text;
  final String netImagePath;
  final Color? textColor;
  final Color? backgroundColor;
  final VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.sm),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 60,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ?? TColores.white,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: NetworkImage(netImagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
                width: 50,
                child: Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color:textColor?? TColores.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
