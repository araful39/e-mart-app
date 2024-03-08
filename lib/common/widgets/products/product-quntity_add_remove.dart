import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
class RProductQuantityAddRemove extends StatelessWidget {
  const RProductQuantityAddRemove({
    super.key, required this.count, required this.onTapAdd, required this.onTapRemove,
  });
  final int count;
  final VoidCallback onTapAdd;
  final VoidCallback onTapRemove;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTapRemove,
          child: const RRoundedContainer(
            height: 35,
            width: 35,
            backgroundColor: RColores.buttonPrimary,
            child: Icon(Icons.remove,color: Colors.white,),
          ),
        ),
        const SizedBox(
          width: RSizes.md,
        ),
        SizedBox(
          width: 20,
          child: Text(
            count.toString(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),const SizedBox(
          width: RSizes.md,
        ),
        InkWell(
          onTap: onTapAdd,
          child: const RRoundedContainer(
            height: 35,
            width: 35,
            backgroundColor: RColores.buttonPrimary,
            child: Icon(Icons.add,color: Colors.white,),
          ),
        )
      ],
    );
  }
}