import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class TShadowStyle{
  static final verticalProductShadow=BoxShadow(
    color:RColores. white.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,offset: const Offset(0,2)
  );

  static final horizontalProductShadow=BoxShadow(
    color:RColores. white.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,offset: const Offset(0,2)
  );


}