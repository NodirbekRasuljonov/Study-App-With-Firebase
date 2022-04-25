import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';

class UpdateversionPage extends StatelessWidget {
  const UpdateversionPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(color: ColorConst.text2Color),
        title: Text('Update Version'),
        iconTheme: IconThemeData(color: ColorConst.text2Color),),
      
    );
  }
}