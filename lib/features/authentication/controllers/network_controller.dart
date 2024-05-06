
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkManager  extends GetxController{
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;



  void _updateConnectionStatus(ConnectivityResult result) {
    _connectionStatus.value = result;
    if (result == ConnectivityResult.none) {
      Get.snackbar('No Internet Connection', 'Please check your internet connection');
    }
  }

  Future<bool> isConnected()async{
    try{
      final result =await _connectivity.checkConnectivity();
      if(result == ConnectivityResult.none){
        return false;
      }else{
        return true;

      }
    }
    on PlatformException catch (_){
      return false;
    }
  }

  @override
  void onClose() {
    super.onClose();
    _connectivitySubscription.cancel();
  }
}