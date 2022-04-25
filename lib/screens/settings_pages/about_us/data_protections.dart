import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';

class DataProtectionPage extends StatelessWidget {
  const DataProtectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: ColorConst.text2Color,
        ),
        title: const Text('Data Protection'),
        iconTheme: const IconThemeData(
          color: ColorConst.text2Color,
        ),
      ),
    );
  }
}
