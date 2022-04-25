import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/size_const.dart';
import 'package:studyapp/widgets/my_appbar.dart';
import 'package:studyapp/widgets/my_card.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(title: 'Settings'),
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
