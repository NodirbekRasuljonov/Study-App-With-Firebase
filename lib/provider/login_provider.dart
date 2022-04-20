import 'package:flutter/material.dart';
import 'package:studyapp/firebase/firebase_service.dart';
class LoginProvider extends ChangeNotifier {
  LoginProvider(){
    checkLogin();
  }
  String route = '/login';
  checkLogin() {
  
        MyFirebaseService.auth.currentUser != null ? route='/home':route='/splash' ;
      
    notifyListeners();
    
  }
}