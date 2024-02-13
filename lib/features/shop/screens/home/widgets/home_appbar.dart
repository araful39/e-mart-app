import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/products/cart_menu_icon.dart';
import 'package:e_mart/features/authentication/screens/login/login.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RHomeAppBar extends StatelessWidget {
  const RHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RAppBar(
      title: Column(
        children: [
          Text(
            RTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.apply(color: RColores.grey),
          ),
          Text(
            RTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.apply(color: RColores.grey),
          ),
        ],
      ),
      actions: [
        RCardCounterIcon(iconColor: RColores.white, onpress: ()=>Get.to(()=>const LoginScreen()))
      ],
    );
  }
}