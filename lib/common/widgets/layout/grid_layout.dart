import 'package:flutter/material.dart';

import '../../../utills/constants/sizes.dart';
class RGridLayout extends StatelessWidget {
  const RGridLayout({
    super.key, required this.itemCount, this.mainAxisExtent, required this.itemBuilder,
  });
final int itemCount;
final double? mainAxisExtent;
final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate:   SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: TSizes.gridViewSpacing,
            crossAxisSpacing:  TSizes.gridViewSpacing,mainAxisExtent:mainAxisExtent ?? 288),

        itemBuilder: itemBuilder);
  }
}