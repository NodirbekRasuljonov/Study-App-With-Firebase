import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/size_const.dart';
import 'package:studyapp/widgets/my_card.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
            color: ColorConst.text2Color,
            fontSize: SizeConst.large,
            fontWeight: FontWeight.w500),
        title: const Text('Setting'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          MyCard2.categories(
            text: 'App language',
            route: '/applang',
            context: context,
          ),
          MyCard2.categories(
            text: 'Notifications',
            route: '/notifications',
            context: context,
          ),
          MyCard2.categories(
            text: 'Update Version',
            route: '/updateversion',
            context: context,
          ),
        ],
      ),
    );
  }
}
