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
    final isColor=RHelperFunctions.getColor(text) != null;
    return ChoiceChip(

      label: isColor
        ? const SizedBox()
          :  Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? RColores.white : null),


      avatar: isColor
          ? RCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: RHelperFunctions.getColor(text)!,
            )
          : null,
      shape:isColor
          ? const CircleBorder():null,
      labelPadding:isColor
          ? const EdgeInsets.all(0) :null,
      padding:isColor
          ? const EdgeInsets.all(0):null,
      backgroundColor:isColor
          ? Colors.green :Colors.teal,
    );
  }
}
