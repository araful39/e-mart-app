import 'package:flutter/material.dart';

class RProductTitleText extends StatelessWidget {
  const RProductTitleText({
    super.key,
    required this.title,
 this.smallSize=false,
   this.maxLine,
    this.textAlign,
  });

  final String title;
  final bool smallSize;
  final int? maxLine;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine ?? 2,
      textAlign: textAlign ?? TextAlign.left,
    );
  }
}
