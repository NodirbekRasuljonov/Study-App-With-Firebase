import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/firebase/firebase_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'HI! Bro',
          style: TextStyle(color: ColorConst.text2Color),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        child: FutureBuilder(
          future: MyFirebaseService.firestore.collection('users').get(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (!snapshot.hasError) {
              return const Center(
                child: Text('Check your connection'),
              );
            } else {
              return Text('salom');
            }
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
        ),
      ),
    );
  }
}
