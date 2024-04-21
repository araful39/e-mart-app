import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';
class RUserAdresses extends StatelessWidget {
  const RUserAdresses({
    super.key, required this.name, required this.phoneNumber, required this.adresses, required this.country,required this.showIcon,
  });
  final String name;
  final String phoneNumber;
  final String adresses;
  final String country;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TRoundedContainer(
        padding:  const EdgeInsets.all(15),
        borderColor: RColores.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RSectionHeading(name: name),
               showIcon?  const Icon(Icons.check_circle_outline,color: Colors.indigo,): const SizedBox()
              ],
            ),
            Text(phoneNumber),
            Text(adresses),
            Text(country),
          ],
        ),
      ),
    );
  }
}