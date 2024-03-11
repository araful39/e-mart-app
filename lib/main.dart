


import 'package:e_mart/features/authentication/controllers/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {

final WidgetsBinding widgetsBinding=  WidgetsFlutterBinding.ensureInitialized();

await GetStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}



