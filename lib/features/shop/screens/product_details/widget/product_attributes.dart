import 'package:e_mart/common/widgets/chips/choice_chips.dart';
import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/products/product_title_text.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class RProductAttributes extends StatefulWidget {
  const RProductAttributes({super.key});

  @override
  State<RProductAttributes> createState() => _RProductAttributesState();
}

class _RProductAttributesState extends State<RProductAttributes> {

  final bool isClick=true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: TColores.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const RSectionHeading(
                    name: "Variation",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.md,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const RProductTitleText(
                            title: "Price: ",
                            smallSize: true,
                          ),
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          Text(
                            "\$20",
                            style: Theme.of(context).textTheme.titleSmall,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const RProductTitleText(
                            title: "Stack:  ",
                            smallSize: true,
                          ),
                          Text(
                            "in Stack",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RSectionHeading(name: "Colors"),
            const SizedBox(
              height: TSizes.sm,
            ),
            Wrap(
              spacing: 15,
              children: [
              TChoiceChip(
                text: 'Green',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Yellow',
                selected: true,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Red',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Blue',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Pink',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Purple',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Red',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Blue',
                selected: false,
                onSelected: (value) {},
              ),
            ],)
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RSectionHeading(name: "Size"),
            const SizedBox(
              height: TSizes.sm,
            ),
       Wrap(
         spacing: 8,
         children: [
           TChoiceChip(
             text: 'EU 34',
             selected: isClick,
             onSelected: (value) {
               isClick != value;
             },
           ),

           TChoiceChip(
             text: 'EU 35',
             selected: isClick,
             onSelected: (value) {
               isClick != value;
             },
           ),

           TChoiceChip(
             text: 'EU 36',
             selected: isClick,
             onSelected: (value) {
               isClick != value;
             },
           ),

           TChoiceChip(
             text: 'EU 37',
             selected: isClick,
             onSelected: (value) {
               isClick != value;
             },
           ),
         ],
       )
          ],
        ),
      ],
    );
  }
}
