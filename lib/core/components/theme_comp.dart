import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';

class ThemeComp{
  static ThemeData themeData=ThemeData(
    colorScheme: const  ColorScheme.light(primary: ColorConst.kPrimaryColor),
    scaffoldBackgroundColor: ColorConst.kScaffoldColor
  );
}