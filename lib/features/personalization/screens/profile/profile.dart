import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/images/r_circular_image.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: RAppBar(
        title: Text("Profile"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              Column(
                children: [
                  RCircularImage(
                      imagePath:
                          "https://scontent.fdac4-1.fna.fbcdn.net/v/t39.30808-6/359379744_1670308010049866_4802363250202591408_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeF2GZ7pNyjfPcsXp88GwyQfd8lpX2KM6rp3yWlfYozqugi7_sglBYPVNk5NAFw3hz6-PurQc3XrU2na0A_pCgnv&_nc_ohc=TfRQV44wYmoAX_dVd5f&_nc_zt=23&_nc_ht=scontent.fdac4-1.fna&oh=00_AfA9TtG9YqqqBByQH70poFZRBiTLmFtgcN9JTALS4S5_hw&oe=65D7DBD2",
                      isNetworkImage: true)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
