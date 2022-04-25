import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/widgets/my_appbar.dart';

class AppLangPage extends StatelessWidget {
  const AppLangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'App Language'),
      body: Column(
        children: [
          
        ],
      )
    );
  }

  // Card langs({required String text}) {
  //   return Card(
  //     child: ListTile(
  //       title: Text(text),
  //       trailing: Icon(Icons.chevron_right_outlined),
  //     ),
  //   );
  // }
}
