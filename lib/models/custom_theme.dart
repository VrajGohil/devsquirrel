import 'dart:ui';
import 'package:devsquirrel/constants/colors.dart';
import 'package:flutter/foundation.dart';

class CustomTheme extends ChangeNotifier{
  //default theme blue
  Color _baseColor = kBlue;
  Color _fontColor = kLight;
  String _laptopURL = 'assets/laptop.png';

  void setBlue(){
    _baseColor = kBlue;
    _fontColor = kLight;
    _laptopURL = 'assets/laptop.png';
    notifyListeners();
  }

  void setLight(){
    _baseColor = kLight;
    _fontColor = kDark;
    _laptopURL = 'assets/laptopDark.png';
    notifyListeners();
  }

  void setDark(){
    _baseColor = kDark;
    _fontColor = kLight;
    _laptopURL = 'assets/laptop.png';
    notifyListeners();
  }

  Color get getBaseColor{
    return _baseColor;
  }

  Color get getFontColor{
    return _fontColor;
  }
  
  String get getLaptopURL{
    return _laptopURL;
  }

}