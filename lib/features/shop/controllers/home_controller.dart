
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {



  RxList data = [
    {
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfiyrWgF8eCNMTJO1D02mEggu4dU2ywwhTOw&usqp=CAU",
      "name": "Shoe"
    },
    {
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8hbf7_5dCnSkqiDER1A7uOEv2RVBqpWyUNg&usqp=CAU",
      "name": "Pant"
    },

    {
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE0VYnz9DcJNMEBcD_dFM99PpJfXm7I5c9JQ&usqp=CAU",
      "name": "Shirt"
    },
    {
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfiyrWgF8eCNMTJO1D02mEggu4dU2ywwhTOw&usqp=CAU",
      "name": "T-Shirt"
    },
    {
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8hbf7_5dCnSkqiDER1A7uOEv2RVBqpWyUNg&usqp=CAU",
      "name": "Pant"
    },

    {
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE0VYnz9DcJNMEBcD_dFM99PpJfXm7I5c9JQ&usqp=CAU",
      "name": "Shirt"
    },
    {
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfiyrWgF8eCNMTJO1D02mEggu4dU2ywwhTOw&usqp=CAU",
      "name": "T-Shirt"
    },
    {
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtTVQUUkfXPTWmG3aMBGgo_bf549NcSz3WMQ&usqp=CAU",
      "name": "Shirt"
    },

  ].obs;

  FirebaseFirestore firestore=FirebaseFirestore.instance;
  
  // categories add to firebase firestore
  
  Future<void> addCustomCategories(List<dynamic> categoriesList )async{
    firestore.collection("categoriesList").doc();
  }
  
  
  

  final carousalCurrentIndex=0.obs;
  // RxList carouselSlides=[TImages.banners1,TImages.banners2,TImages.banners3,TImages.banners5].obs;

  
  // carousalSlider
  
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
