import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('HI! Bro',style: TextStyle(color: ColorConst.text2Color),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      
    );
  }
}