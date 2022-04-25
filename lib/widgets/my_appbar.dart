import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/size_const.dart';
class MyAppBar{
  static AppBar myAppBar({required String title}){
    return AppBar(
      iconTheme: IconThemeData(color: ColorConst.text2Color),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(color: ColorConst.text2Color,fontSize: SizeConst.medium),
      title: Text(title),
      
    );
  }
}