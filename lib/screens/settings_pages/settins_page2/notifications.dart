import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/widgets/my_appbar.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(title: 'Notifications')
      
    );
  }
}