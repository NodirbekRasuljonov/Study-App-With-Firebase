import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/widgets/my_appbar.dart';

class UpdateversionPage extends StatelessWidget {
  const UpdateversionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar (title: 'Update Version')
    );
  }
}
