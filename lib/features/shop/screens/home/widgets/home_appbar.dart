import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/products/cart_menu_icon.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:flutter/material.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.apply(color: TColores.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.apply(color: TColores.grey),
          ),
        ],
      ),
      actions: [
        TCardCounterIcon(iconColor: TColores.white, onpress: (){})
      ],
    );
  }
}