import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:get/get.dart';

class ProductDetailControllar extends GetxController{
  RxInt imageIndex=2.obs;


  String sliderImages(){

    if(imageIndex.value==1){
      return RImages.shoes1 ;
    }
    else if(imageIndex.value==2){
      return RImages.shoes2;
    }
    else if(imageIndex.value==3){
      return RImages.shoes3;
    }
    else {
      return RImages.shoes4;


    }

  }
}