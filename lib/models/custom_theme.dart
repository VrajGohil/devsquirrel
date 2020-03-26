import 'dart:ui';
import 'package:devsquirrel/constants/colors.dart';
import 'package:flutter/foundation.dart';

class CustomTheme extends ChangeNotifier{
  //default theme light
  Color _baseColor = kLight;
  Color _fontColor = kDark;
  Color _baseColorEnd = kLigthEnd;
  String _laptopURL = 'assets/laptopDark.png';

  void setLight(){
    _baseColor = kLight;
    _fontColor = kDark;
    _baseColorEnd = kLigthEnd;
    _laptopURL = 'assets/laptopDark.png';
    notifyListeners();
  }

  void setDark(){
    _baseColor = kDark;
    _fontColor = kLight;
    _baseColorEnd = kDarkEnd;
    _laptopURL = 'assets/laptop.png';
    notifyListeners();
  }

  Color get getBaseColor{
    return _baseColor;
  }

  Color get getBaseColorEnd{
    return _baseColorEnd;
  }

  Color get getFontColor{
    return _fontColor;
  }
  
  String get getLaptopURL{
    return _laptopURL;
  }

}