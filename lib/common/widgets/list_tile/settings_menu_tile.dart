import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';
class RSettingsMenuTile extends StatelessWidget {
  const RSettingsMenuTile({super.key, required this.title, required this.subTitle, required this.icon, this.trailing, this.onTap});
final String title;
final String subTitle;
final IconData icon;
final Widget? trailing;
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
leading: Icon(icon,size: 20,color: RColores.primary,),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subTitle,style: Theme.of(context).textTheme.labelMedium,),
      trailing: trailing,
      onTap: onTap,

    );
  }
}
