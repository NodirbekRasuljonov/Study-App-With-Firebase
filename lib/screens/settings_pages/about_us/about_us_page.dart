import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        titleTextStyle: const TextStyle(
          color: ColorConst.text2Color,
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: ColorConst.text2Color,
        ),
      ),
    );
  }
}
