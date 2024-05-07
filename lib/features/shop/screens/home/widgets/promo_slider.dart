import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_mart/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_mart/common/widgets/images/t_rounded_image.dart';
import 'package:e_mart/features/shop/controllers/home_controller.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RPromoSlider extends StatelessWidget {
  const RPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return Column(
      children: [
        Obx(
        () {
              if (controller.carouselSlides.isEmpty) {
                return const CircularProgressIndicator();
              }

              return CarouselSlider.builder(itemCount: controller.carouselSlides.length,
                itemBuilder: (context, index, __) {
                  return RRoundedImage(
                      imageUrl: controller.carouselSlides[index], isNetworkImage: false);
                },
                options: CarouselOptions(
                    onPageChanged: (index, _) =>
                        controller.updatePageIndicator(index),
                    // pauseAutoPlayOnTouch: false,
                    // pageSnapping: false,
                    // scrollDirection: Axis.horizontal,
                    enlargeCenterPage: false,
                    // aspectRatio: 500,
                    viewportFraction: 1,
                    // enableInfiniteScroll: false,
                    // animateToClosest: false,
                    // reverse: true,
                    // initialPage: 2,
                    // autoPlayInterval: Duration(milliseconds: 50),
                    autoPlayCurve: Curves.bounceOut,
                    height: 100,
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(
                        milliseconds: 500)),
              );
            },),
        const SizedBox(
          height: TSizes.sm,
        ),
        Obx(
    ()=> Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(var i=0; i<controller.carouselSlides.length; i++)  TCircularContainer(
                backgroundColor: controller.carousalCurrentIndex.value==i ? RColores.primary: RColores.grey,
                height: 15,
                width: 15,
                margin: const EdgeInsets.only(right: 10),
              ),


            ],
          ),
        )
      ],
    );
  }
}