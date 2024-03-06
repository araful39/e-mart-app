import 'package:flutter/material.dart';

class TTextFormFieldTheme{
  static InputDecorationTheme lightInputDecorationTheme=InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border:  const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1,color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1,color: Colors.grey),
      borderRadius: BorderRadius.circular(14)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),
    borderSide: const BorderSide(width: 1,color: Colors.black12)),
    errorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(width: 1,color: Colors.red)
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(width: 1,color: Colors.orange),
      borderRadius: BorderRadius.circular(14)
    )
  );


  static InputDecorationTheme darkInputDecorationTheme=InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,suffixIconColor: Colors.grey,
    labelStyle: TextStyle().copyWith(fontSize: 14,color: Colors.black),
    hintStyle: TextStyle().copyWith(fontSize: 14,color: Colors.black),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(width: 1,color: Colors.grey),
      borderRadius: BorderRadius.circular(14)
    ),
    focusedBorder: OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),
    borderSide: BorderSide(width: 1,color: Colors.black12)),
    errorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(width: 1,color: Colors.red)
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderSide: BorderSide(width: 1,color: Colors.orange),
      borderRadius: BorderRadius.circular(14)
    )
  );
}