import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';

class RRatingsProgresIndicator extends StatelessWidget {
  const RRatingsProgresIndicator({
    super.key,
    required this.ratingCount,
    required this.value,
    this.color,
  });
  final String ratingCount;
  final double value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ratingCount,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 2,
          child: SizedBox(
            height: 10,
            width: double.infinity,
            child: LinearProgressIndicator(

              borderRadius: BorderRadius.circular(10),
              value: value,

              valueColor: AlwaysStoppedAnimation(color ?? RColores.success),
              backgroundColor: RColores.grey,
            ),
          ),
        ),

      ],
    );
  }
}
