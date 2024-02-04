import 'package:e_mart/utills/constants/colors.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dark, required this.dividerText,
  });

  final bool dark;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: Divider(color: dark ? TColores.darkGery : TColores.grey,thickness: 0.5,indent: 60,endIndent: 5,)),
        Text(dividerText,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? TColores.darkGery : TColores.grey,thickness: 0.5,indent:5,endIndent: 60,))
      ],
    );
  }
}