import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/widgets/my_appbar.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:MyAppBar.myAppBar(title: 'Terms and Conditions')
      
    );
  }
}