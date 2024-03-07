
import 'package:flutter/material.dart';

class RSectionHeading extends StatelessWidget {
  const RSectionHeading({
    super.key,
    required this.name,
    this.onpress,
    this.subText,
    this.showActionButton = false,
    this.textColor,
  });
  final String name;
  final Color? textColor;
  final String? subText;
  final bool showActionButton;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor ?? Colors.black),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
              onPressed: onpress,
              child: Text(
                subText ?? "view all",
                style: Theme.of(context).textTheme.bodySmall!.apply(color: textColor ?? Colors.black),
              )),
      ],
    );
  }
}