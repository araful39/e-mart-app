import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_mart/common/widgets/list_tile/r_user_profile_tile.dart';
import 'package:e_mart/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            RPrimaryHeaderContainer(
              headerHeight: 150,
              topHeight: 140,

                child: Column(
              children: [
                RAppBar(
                  title: Text("Account",style: Theme.of(context).textTheme.headlineMedium?.apply(color: RColores.white),),
                ),
                  RUserProfileTile(title: 'Raju', subTitle: 'rajuslam39@gmail.com', onPress: () {  }, icon: Icons.edit,)
              ],
            )),
            const Padding(padding: EdgeInsets.all(RSizes.defaultBtwSections),
            child: Column(
              children: [
                RSectionHeading(text: "Account Settings"),
                RSettingsMenuTile(title: 'My Address', subTitle: 'Get shopping delivery address', icon: Icons.person,),
                RSettingsMenuTile(title: 'My Cart', subTitle: 'Add, remove products and move to checkout', icon: Icons.person,),
                RSettingsMenuTile(title: 'My Orders', subTitle: 'Get shopping delivery address', icon: Icons.person,),
                RSettingsMenuTile(title: 'Bank Account', subTitle: 'Get shopping delivery address', icon: Icons.person,),
                RSettingsMenuTile(title: 'My Coupons', subTitle: 'Get shopping delivery address', icon: Icons.person,),
                RSettingsMenuTile(title: 'Notifications', subTitle: 'Get shopping delivery address', icon: Icons.person,),
                RSettingsMenuTile(title: 'Account Privacy', subTitle: 'Get shopping delivery address', icon: Icons.person,),
                SizedBox(height: RSizes.defaultBtwSections,),
                RSectionHeading(text: "App Settings"),
                SizedBox(
                  height: RSizes.spaceBtwItems,
                ),
                RSettingsMenuTile(title: 'Load Data', subTitle: 'Get shopping delivery address', icon: Icons.person,),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}

