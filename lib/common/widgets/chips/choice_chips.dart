import 'package:e_mart/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/helpers/helpers.dart';
import 'package:flutter/material.dart';

class RChoiceChip extends StatelessWidget {
  const RChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: RHelperFunctions.getColor(text) != null
          ? const SizedBox()
          : const Text(""),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? RColores.white : null),


      avatar: RHelperFunctions.getColor(text) != null
          ? RCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: RHelperFunctions.getColor(text)!,
            )
          : null,
      shape:RHelperFunctions.getColor(text) != null
          ? const CircleBorder():null,
      labelPadding:RHelperFunctions.getColor(text) != null
          ? const EdgeInsets.all(0) :null,
      padding:RHelperFunctions.getColor(text) != null
          ? const EdgeInsets.all(0):null,
      backgroundColor:RHelperFunctions.getColor(text) != null
          ? Colors.green :null,
    );
  }
}
