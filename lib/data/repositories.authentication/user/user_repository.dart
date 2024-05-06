
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_mart/data/repositories.authentication/user/user_model.dart';
import 'package:e_mart/utills/exception/firebase_exception.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;



  Future<void> saveUserRecord(UserModel user)async {
    try {
      await _db.collection("Users").doc(1.toString()).set(user.toJson());
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    }
    catch (e) {
      throw "Something went wrong. Please try again";
    }
  }}
