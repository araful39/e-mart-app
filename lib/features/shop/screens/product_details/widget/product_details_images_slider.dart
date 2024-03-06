import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/icons/r_circular_icon.dart';
import 'package:e_mart/common/widgets/images/r_rounded_image.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_mart/features/shop/controllers/product_detail_controller.dart';
import 'package:get/get.dart';

class RProductImageSlider extends StatelessWidget {
  const RProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProductDetailController productDetailController =
        Get.put(ProductDetailController());
    return Obx(
      () => RPrimaryHeaderContainer(
          isCircular: false,
          color: RColores.black.withOpacity(0.5),
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image:
                            AssetImage(productDetailController.sliderImages()),
                        height: 180,
                      ),
                    ],
                  ),
                  const RAppBar(
                    actions: [
                      RCircularIcon(
                        icon: Icons.favorite,
                        color: RColores.red,
                      )
                    ],
                    showBackArrow: true,
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          productDetailController.changeSliderImages(index);
                          print(index);
                        },
                        child: RRoundedImage(
                            backgroundColor: RColores.black,
                            border: Border.all(color: RColores.white),
                            height: 50,
                            imageUrl: productDetailController.imagesList[index]
                                .toString(),
                            isNetworkImage: false),
                      );
                    },
                    separatorBuilder: (_, __) {
                      return const SizedBox(
                        width: RSizes.spaceBtwItems,
                      );
                    },
                    itemCount: productDetailController.imagesList.length),
              ),
            ],
          )),
    );
  }
}
