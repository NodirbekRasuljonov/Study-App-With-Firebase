import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';

class MyMessanger {
  static showMyMessanger({required String text, required BuildContext context, Color color=ColorConst.kPrimaryColor}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: color,
      ),
    );
  }
}
