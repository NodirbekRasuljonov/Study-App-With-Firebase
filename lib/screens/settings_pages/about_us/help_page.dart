import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title:const Text('Help'),
        titleTextStyle: const TextStyle(color: ColorConst.text2Color),
        iconTheme: const IconThemeData(color: ColorConst.text2Color),
      ),
    );
  }
}
