import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/export_constant.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: MyColors.colorFCF7FA,
      primaryColor: MyColors.colorFCF7FA,
      textTheme: TextTheme(
        titleLarge: TextStyle(fontSize: 22.spMin, fontFamily: Font.epilogue, fontWeight: FontWeight.w700, color: MyColors.color1C0D12),
        titleMedium: TextStyle(fontSize: 16.spMin, fontFamily: Font.epilogue, fontWeight: FontWeight.w500, color: MyColors.color1C0D12),
        titleSmall: TextStyle(fontSize: 14.spMin, fontFamily: Font.epilogue, fontWeight: FontWeight.w400, color: MyColors.color1C0D12),
        labelLarge: TextStyle(fontSize: 24.spMin, fontFamily: Font.epilogue, fontWeight: FontWeight.w700, color: MyColors.color1C0D12),
        labelMedium: TextStyle(fontSize: 12.spMin, fontFamily: Font.epilogue, fontWeight: FontWeight.w500, color: MyColors.color964F66),
      ),

  );
}

extension ThemeExtension on ThemeData {}
