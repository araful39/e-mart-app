import 'package:e_mart/common/widgets/vertical_images_text/vertical_image_text.dart';
import 'package:flutter/cupertino.dart';

class RHomeCategories extends StatelessWidget {
  final List<dynamic> list;
  const RHomeCategories({
    super.key, required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return RVerticalImageText(
              text: list[index]["name"],
              netImagePath: list[index]["image"],

            );
          }),
    );
  }
}