import 'package:e_mart/common/widgets/images/t_circular_image_with_clipOval.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:flutter/material.dart';
class RUserProfileTile extends StatelessWidget {
  const RUserProfileTile({
    super.key, required this.title, required this.subTitle, required this.onPress, required this.icon,
  });
  final String title;
  final String subTitle;
  final VoidCallback onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const RCircularImageWithClipOval(
        height: 50,width: 50,
        isNetworkImage: false, imagePath: TImages.profile,),
      title: Text(title,style: Theme.of(context).textTheme.headlineSmall?.apply(color: TColores.white),

      ),
      subtitle:  Text(subTitle,style: Theme.of(context).textTheme.bodyMedium?.apply(color: TColores.white),

      ),
      trailing: IconButton(onPressed: onPress, icon:  Icon(icon,color: TColores.white,size: 30,),),


    );
  }
}
