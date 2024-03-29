// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCKuLtsyHXq5lx-usJJRWO5gDQ-0wyUzQw',
    appId: '1:182223019751:web:2c7ba9a71fcadc7c72cc42',
    messagingSenderId: '182223019751',
    projectId: 'ecommerceapp-74910',
    authDomain: 'ecommerceapp-74910.firebaseapp.com',
    storageBucket: 'ecommerceapp-74910.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDGPR1BCytR0CM0-2lJkDPQx964c2RPC7w',
    appId: '1:182223019751:android:b05506d8edac915572cc42',
    messagingSenderId: '182223019751',
    projectId: 'ecommerceapp-74910',
    storageBucket: 'ecommerceapp-74910.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC7TBBFlZYPhr74svTDBxQNR5EUBHkvI1Q',
    appId: '1:182223019751:ios:0bc7b7483749004b72cc42',
    messagingSenderId: '182223019751',
    projectId: 'ecommerceapp-74910',
    storageBucket: 'ecommerceapp-74910.appspot.com',
    iosBundleId: 'com.example.eMart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC7TBBFlZYPhr74svTDBxQNR5EUBHkvI1Q',
    appId: '1:182223019751:ios:1ab624e6bfde3dfb72cc42',
    messagingSenderId: '182223019751',
    projectId: 'ecommerceapp-74910',
    storageBucket: 'ecommerceapp-74910.appspot.com',
    iosBundleId: 'com.example.eMart.RunnerTests',
  );
}
