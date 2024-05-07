
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final carousalCurrentIndex=0.obs;
  RxList carouselSlides=[TImages.banners1,TImages.banners2,TImages.banners3,TImages.banners5].obs;

  void updatePageIndicator(index){
    carousalCurrentIndex.value=index;
  }



  @override
  void onInit() {
    super.onInit();
    // fetchCarouselSlides();
print('carouselSlides lenth $carouselSlides.length');
  }

  FirebaseFirestore firestore =FirebaseFirestore.instance;


  // Future<void> fetchCarouselSlides() async {
  //
  //  FirebaseFirestore.instance.collection('crousol_slider').snapshots().listen((snapshot) {
  //     carouselSlides.value = snapshot.docs.map((doc) => doc.data()).toList();
  //   });
  // }


}
