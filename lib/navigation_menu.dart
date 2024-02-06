import 'package:e_mart/features/shop/screens/home/home.dart';
import 'package:e_mart/features/shop/screens/profile/profile.dart';
import 'package:e_mart/features/shop/screens/shop/shop.dart';
import 'package:e_mart/features/shop/screens/wishlist/wishlist.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    if (kDebugMode) {
      print("print1");
    }
    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            animationDuration: Duration(seconds: 1,),
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
              NavigationDestination(icon: Icon(Icons.shop), label: "Shop"),
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
    const ShopScreen(),
    const WishlistScreen(),
    const ProfileScreen()
  ];
}
