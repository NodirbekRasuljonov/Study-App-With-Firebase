import 'package:flutter/cupertino.dart';

class CheckBoxProvider extends ChangeNotifier{
  bool isChacked=false;

  change(v){
    isChacked=v;
    notifyListeners();
  }
}