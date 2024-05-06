import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_mart/common/widgets/list_tile/r_user_profile_tile.dart';
import 'package:e_mart/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/features/authentication/screens/login/login.dart';
import 'package:e_mart/features/personalization/controllers/settings_controller.dart';
import 'package:e_mart/features/personalization/screens/address/address.dart';
import 'package:e_mart/features/personalization/screens/profile/profile.dart';
import 'package:e_mart/features/shop/screens/cart/cart.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController settingsController=Get.put(SettingsController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                headerHeight: 200,
                topHeight: 140,
                child: Column(
                  children: [
                    TAppBar(
                      title: Text(
                        "Account",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.apply(color: RColores.white),
                      ),
                    ),
                    RUserProfileTile(
                      title: 'Raju',
                      subTitle: 'rajuslam39@gmail.com',
                      onPress: ()
                      {
                        Get.to(()=>const Profile());
                      },
                      icon: Icons.edit,
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultBtwSections),
              child: Column(
                children: [
                  const RSectionHeading(name: "Account Settings"),
                   RSettingsMenuTile(
                    title: 'My Address',
                    subTitle: 'Get shopping delivery address',
                    icon: Icons.person,
                    onTap: ()=>Get.to(()=>const UserAddressScreen()),
                  ),
                   RSettingsMenuTile(
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    icon: Icons.person,
                    onTap: ()=>Get.to(()=>const CartScreen()),
                  ),
                   const RSettingsMenuTile(
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    icon: Icons.person,
                  ),
                  const RSettingsMenuTile(
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank ',
                    icon: Icons.person,
                  ),
                  const RSettingsMenuTile(
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    icon: Icons.person,
                  ),
                  const RSettingsMenuTile(
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message',
                    icon: Icons.person,
                  ),
                  const RSettingsMenuTile(
                    title: 'Account Privacy',
                    subTitle: 'Manage data use and connect',
                    icon: Icons.person,
                  ),
                   const SizedBox(
                    height: TSizes.defaultBtwSections,
                  ),
                   const RSectionHeading(name: "App Settings"),
                   const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                   const RSettingsMenuTile(
                    title: 'Load Data',
                    subTitle: 'Get shopping delivery address',
                    icon: Icons.upload,
                  ),
                  RSettingsMenuTile(
                    title: 'Location',
                    subTitle: 'Set recommendation',
                    icon: Icons.location_on_outlined,
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),

                  RSettingsMenuTile(
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    icon: Icons.safety_check,
                    trailing: Obx(
                    ()=> Switch(
                        value: settingsController.isClick.value,
                        onChanged: (value) {
                          settingsController.onChangeSafeMode(value);
                        },
                      ),
                    ),
                  ),
                   const RSettingsMenuTile(
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    icon: Icons.image,
                  ),
                   const SizedBox(
                    height: TSizes.defaultBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: ()async{
                      FirebaseAuth auth=FirebaseAuth.instance;
                      await auth.signOut();
                      print(" FirebaseAuth.instance.signOut");
                      Get.offAll(const LoginScreen());
                    }, child: const Text("LogOut")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

