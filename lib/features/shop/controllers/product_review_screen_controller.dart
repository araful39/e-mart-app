import 'package:get/get.dart';

class ProductReviewAndRatingController extends GetxController{
 RxBool isExpanded=true.obs;

  toggleExpanded(){
   isExpanded.value=!isExpanded.value;
 }

}