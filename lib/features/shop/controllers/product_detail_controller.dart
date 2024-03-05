import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  RxList imagesList =
      [RImages.shoes1, RImages.shoes2, RImages.shoes3, RImages.shoes4].obs;

  RxInt imageIndex = 2.obs;

  String sliderImages() {
    if (imageIndex.value == 0) {
      return imagesList[0].toString();
    } else if (imageIndex.value == 1) {
      return imagesList[1].toString();
    } else if (imageIndex.value == 2) {
      return imagesList[2].toString();
    } else {
      return imagesList[3].toString();
    }
  }

  changeSliderImages(int sliderImagesIndex) {
    imageIndex = sliderImagesIndex.obs;
  }
}
