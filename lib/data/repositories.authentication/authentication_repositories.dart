import 'package:e_mart/utills/exception/firebase_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

final deviceStorage = GetStorage();
final _auth =FirebaseAuth.instance;


  @override
  void onReady() {


  }


  /* ----------------------Email & Password sign-in ------------------*/

  /// [EmailAuthentication] - SignIn

  /// [EmailAuthentication] -     REGISTER

  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch(_) {
      throw const TFormatException();
    } on PlatformException catch(e) {
      throw TPlatformException(e.code).message;
    } catch(e) {
      throw "Something went wrong. Please try again";
    }
  }


  /// [EmailVerification] - MAIL VERIFICATION

  /// [ResAuthentication] - ReAuthentication User

  /// [EmailAuthentication] - FORGET PASSWORD


/* ----------------------Federate identity & social sign-in------------------*/

  /// [GoogleAuthentication] - Google

  /// [FacebookAuthentication] - Facebook



/* ---------------------- end Federated identity & social sign-in ------------------*/


  /// [LogoutUser] - Valid for any authentication

  /// [DeleteUser] -Remove user Auth and Firestore Account












}