import 'package:flutter/material.dart';
import 'package:studyapp/widgets/my_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Profile')
    );
  }
}