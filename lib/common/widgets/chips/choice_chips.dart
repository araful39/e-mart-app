import 'package:e_mart/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';

class RChoiceChip extends StatelessWidget {
  const RChoiceChip({
    super.key, required this.text, required this.selected, this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label:  Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle:  TextStyle(color : selected ? RColores.white : null),




      selectedColor: Colors.green,
      backgroundColor: Colors.green,
    );
  }
}
