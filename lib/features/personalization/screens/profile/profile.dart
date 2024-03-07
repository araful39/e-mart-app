import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/images/r_circular_image_with_clipOval.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/features/personalization/screens/profile/widget/r_profile_menu.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RAppBar(
        title: Text("Profile"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(

                  children: [
                     const RCircularImageWithClipOval(
                      height: 60,
                      width: 60,
                      isNetworkImage: false,
                      imagePath:RImages.profile,
                    ),
                    TextButton(onPressed: (){}, child: const Text("Change Profile Picture"))
                  ],
                ),
              ),
              const Divider(),
              const RSectionHeading(name: "Profile Information"),
              const SizedBox(
                height: RSizes.sm,
              ),
              RProfileMenu(onTap: () {  }, title: 'name', value: 'Md.Araful islam', iconData: Icons.arrow_forward_ios,),
              const SizedBox(
                height: RSizes.sm,
              ),
              RProfileMenu(onTap: () {  }, title: 'Username', value: 'raju39', iconData: Icons.arrow_forward_ios,),
              const SizedBox(
                height: RSizes.sm,
              ),
              const Divider(),
              const SizedBox(
                height: RSizes.sm,
              ),
              const RSectionHeading(name: "Personal Information"),
              const SizedBox(
                height: RSizes.sm,
              ),
              RProfileMenu(onTap: () {  }, title: 'User ID', value: '12345', iconData: Icons.arrow_forward_ios,),
              const SizedBox(
                height: RSizes.sm,
              ),
              RProfileMenu(onTap: () {  }, title: 'E-mail', value: 'rajuslam39@gmail.com', iconData: Icons.arrow_forward_ios,),
              const SizedBox(
                height: RSizes.sm,
              ),
              RProfileMenu(onTap: () {  }, title: 'Phone Number', value: '+8801928217679', iconData: Icons.arrow_forward_ios,),
              const SizedBox(
                height: RSizes.sm,
              ),
              RProfileMenu(onTap: () {  }, title: 'Gender', value: 'Male', iconData: Icons.arrow_forward_ios,),
              const SizedBox(
                height: RSizes.sm,
              ),
              RProfileMenu(onTap: () {  }, title: 'Date of Birth', value: '15 August 1998', iconData: Icons.arrow_forward_ios,),
              const SizedBox(
                height: RSizes.sm,
              ),

            ],
          ),
        ),
      ),
    );
  }
}


