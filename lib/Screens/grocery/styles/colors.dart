import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  //One instance, needs factory
  static AppColors? _instance;
  factory AppColors() => _instance ??= AppColors._();

  AppColors._();

  static const primaryColor = Color(0xff53B175);
  static const statusBarColor = Color(0xff69da92);
  static const primaryColorLightColor = Color(0xffbdfad3);
  static const darkGrey = Color(0xff7C7C7C);
  static const lightGreen = Color(0xFFA2E0C9);
  static const lightGreyGreen = Color(0xFFCDECE0);
}
