import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';
class RTapBar extends StatelessWidget implements PreferredSizeWidget {
  const RTapBar({super.key, required this.tabs});
final List<Widget> tabs;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: RColores.primary,
        labelColor: RColores.primary,
        unselectedLabelColor: RColores.darkGery,
      ),
    ); // Your custom widget implementation.
  }

}