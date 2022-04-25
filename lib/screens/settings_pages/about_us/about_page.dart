import 'package:flutter/material.dart';
import 'package:studyapp/widgets/my_card.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body:Column(
        children: [
          MyCard2.categories(text: 'About Us', route: '/aboutus', context: context),
          MyCard2.categories(text: 'Help', route: '/help', context: context),
          MyCard2.categories(text: 'Terms and Conditions', route: '/terms', context: context),
          MyCard2.categories(text: 'Data Protection', route: '/dataprotection', context: context)
        ],
      )
    );
  }
}