
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final carousalCurrentIndex=0.obs;
  // RxList carouselSlides=[TImages.banners1,TImages.banners2,TImages.banners3,TImages.banners5].obs;

  void updatePageIndicator(index){
    carousalCurrentIndex.value=index;
  }

  RxList carouselSlides =[].obs;
  fetchList() async {
    const path = "carousel_slider";
    final snapshot = await FirebaseFirestore.instance.collection(path).get();


    if (snapshot.docs.isNotEmpty) {
      carouselSlides.clear();
      carouselSlides.addAll(snapshot.docs.map((doc) => doc.data()));
    }


  }

  @override
  void onInit() {
    super.onInit();
    fetchList();
  }



}
