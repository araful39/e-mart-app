
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_mart/features/shop/models/category_model.dart';
import 'package:get/get.dart';

class CategoryRepository extends GetxController {

  static CategoryRepository get instance => Get.find();

final _db =FirebaseFirestore.instance;

Future<List<CategoryModel>> getAllCategories ()async{
  
final snapshot=  await _db.collection('Categories').get();
  final list=snapshot.docs.map((e) => CategoryModel.fromSnapshot(e)).toList();
  return list;
}



}