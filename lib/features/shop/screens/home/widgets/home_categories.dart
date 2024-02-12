import 'package:e_mart/common/widgets/vertical_images_text/vertical_image_text.dart';
import 'package:e_mart/data/catergori_list.dart';
import 'package:flutter/cupertino.dart';

class RHomeCategories extends StatelessWidget {
  const RHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: productList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return RVerticalImageText(
              text: productList[index]["name"],
              netImagePath: productList[index]["image"],

            );
          }),
    );
  }
}