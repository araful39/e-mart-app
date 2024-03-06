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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(
            ratingCount,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 2,
            child: SizedBox(
              height: 15,
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(20),
                value: value,
                minHeight: 25,
                valueColor: AlwaysStoppedAnimation(color ?? RColores.success),
                backgroundColor: RColores.grey,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
