import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';

class AppLangPage extends StatelessWidget {
  const AppLangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text('App Language'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: ColorConst.text2Color),
        iconTheme: IconThemeData(color: ColorConst.text2Color),
      ),
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
