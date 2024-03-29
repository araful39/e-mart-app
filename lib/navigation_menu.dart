import 'package:e_mart/features/shop/screens/home/home.dart';
import 'package:e_mart/features/shop/screens/shop/store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/personalization/screens/settings/settings.dart';
import 'features/shop/screens/Wishlist/wishlist.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            animationDuration: const Duration(seconds: 1,),
            height: 60,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            // backgroundColor: TColores.success,
            onDestinationSelected: (i) =>
                controller.selectedIndex.value = i,
            indicatorColor: Colors.orange,
            surfaceTintColor: Colors.pinkAccent,
labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.shop), label: "Store"),
              NavigationDestination(
                  icon: Icon(CupertinoIcons.heart), label: "Wishlist"),
              NavigationDestination(
                  icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
            ],
          ),
        ),
        body: SafeArea(
            child:
                Obx(() => controller.screen[controller.selectedIndex.value])));
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screen = [
   const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    const SettingsScreen()
  ];
}
