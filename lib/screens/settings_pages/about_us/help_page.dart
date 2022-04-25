import 'package:flutter/material.dart';
import 'package:studyapp/widgets/my_appbar.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar(title: 'Help')
    );
  }
}
