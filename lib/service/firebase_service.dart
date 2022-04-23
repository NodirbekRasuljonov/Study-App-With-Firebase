import 'package:flutter/material.dart';
import 'package:studyapp/firebase/firebase_service.dart';

class MyFireStore {
  static Map<String, dynamic> myData = {};
  static Future<Map<String, dynamic>> getData() async {
    try {
      await MyFirebaseService.firestore
          .collection('user')
          .doc(MyFirebaseService.auth.currentUser!.email)
          .get()
          .then((value) {
        myData = value.data()!;
        debugPrint(myData['name'].toString());
      });
      return myData;
    } catch (e) {
      return myData;
    }
  }
}