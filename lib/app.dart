import 'package:e_mart/bindings/genaral_bindings.dart';
import 'package:e_mart/features/authentication/screens/splash/splash.dart';
import 'package:e_mart/utills/theme/theme.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-Mart ',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      initialBinding: GeneralBindings(),
      home:  const SplashScreen()
    );
  }
}
