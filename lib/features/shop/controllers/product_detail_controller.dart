import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  RxList imagesList =
      [TImages.shoes1, TImages.shoes2, TImages.shoes3, TImages.shoes4,TImages.shoes5, TImages.shoes6,TImages.shoes7

      ].obs;

  RxInt imageIndex = 0.obs;

  String sliderImages() {
    if (imageIndex.value == 0) {
      return imagesList[0].toString();
    } else if (imageIndex.value == 1) {
      return imagesList[1].toString();
    } else if (imageIndex.value == 2) {
      return imagesList[2].toString();}
    else if (imageIndex.value == 3) {
      return imagesList[3].toString();

    } else if (imageIndex.value == 4) {
      return imagesList[4].toString();

    } else if (imageIndex.value == 5) {
      return imagesList[5].toString();

    }else if (imageIndex.value == 6) {
      return imagesList[6].toString();

    } else {
      return imagesList[7].toString();
    }



  }



  changeSliderImages(int sliderImagesIndex) {
    imageIndex.value = sliderImagesIndex;

  }


  RxInt productCount = 1.obs;
  void decrement() {
    if (productCount > 1) {
      productCount--;
    } else {}
  }

  void increment() {
    if (productCount >= 5) {
    } else {
      productCount++;
    }
  }

}
