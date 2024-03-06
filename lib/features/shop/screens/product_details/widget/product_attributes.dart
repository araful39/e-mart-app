import 'package:e_mart/common/widgets/chips/choice_chips.dart';
import 'package:e_mart/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_mart/common/widgets/products/product_title_text.dart';
import 'package:e_mart/common/widgets/texts/section_heading.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';

class RProductAttributes extends StatelessWidget {
  const RProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RRoundedContainer(
          padding: const EdgeInsets.all(RSizes.md),
          backgroundColor: RColores.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const RSectionHeading(
                    text: "Variation",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: RSizes.md,
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
                            width: RSizes.spaceBtwItems,
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
              const RProductTitleText(
                  title:
                      "This is the Description of the Product and it can go up to max 4 lines")
            ],
          ),
        ),
        const SizedBox(
          height: RSizes.spaceBtwItems,
        ),
        Column(
          children: [
            const RSectionHeading(text: "Colors"),
            const SizedBox(
              height: RSizes.sm,
            ),
            RChoiceChip(
              text: 'Black',
              selected: false,
              onSelected: (value) {},
            ),
          ],
        )
      ],
    );
  }
}
