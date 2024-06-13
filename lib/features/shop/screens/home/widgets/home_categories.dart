import 'package:e_mart/common/widgets/vertical_images_text/vertical_image_text.dart';
import 'package:e_mart/features/shop/controllers/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RHomeCategories extends StatelessWidget {

  const RHomeCategories({
    super.key,
  });

  @override

  Widget build(BuildContext context) {
    final categoryController =Get.put(CategoryController());
    return Obx(
      (){
        if(categoryController.featuredCategories.isEmpty){
          return const Center(child: Text('No Data Found'),);
        }
        return SizedBox(
          height: 75,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount:categoryController.featuredCategories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
final category =categoryController.featuredCategories[index];

                return RVerticalImageText(
                  text:  category.name,
                  netImagePath: category.image,

                );
              }),
        );
      },
    );
  }
}
