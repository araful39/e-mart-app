import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/helpers/helpers.dart';

import 'package:flutter/material.dart';

class RFormDivider extends StatelessWidget {
  const RFormDivider({
    super.key,
   required this.dividerText,
  });


  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark=RHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        Flexible(child: Divider(color: dark ? RColores.darkGery : RColores.grey,thickness: 0.5,indent: 60,endIndent: 5,)),
        Text(dividerText,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? RColores.darkGery : RColores.grey,thickness: 0.5,indent:5,endIndent: 60,))
      ],
    );
  }
}