import 'package:e_mart/utills/constants/sizes.dart';
import 'package:e_mart/utills/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: RSizes.md),
      child: AppBar(

        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back))
            :  leadingIcon !=null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) :null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
