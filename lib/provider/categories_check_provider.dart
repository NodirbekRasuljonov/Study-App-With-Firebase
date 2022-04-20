import 'package:flutter/cupertino.dart';

class CategoriesCheckProvider extends ChangeNotifier {
  bool math=false;
  bool economy=false;
  bool english=false;
  bool bilogy=false;
  bool geography=false;

  change({required bool value}){
    value=!value;
    notifyListeners();
  }
  
}