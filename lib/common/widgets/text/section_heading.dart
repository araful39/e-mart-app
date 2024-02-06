import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';

class RSectionHeading extends StatelessWidget {
  const RSectionHeading({
    super.key,
    required this.text,
    this.onpress,
    this.buttonTitle,
    this.showActionButton = false,
  });
  final String text;
  final String? buttonTitle;
  final bool showActionButton;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: RColores.white),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
              onPressed: onpress,
              child: Text(
                buttonTitle ?? "ButtonTitle",
                style: Theme.of(context).textTheme.bodySmall,
              )),
      ],
    );
  }
}