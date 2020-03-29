import 'dart:ui';
import 'package:devsquirrel/constants/colors.dart';
import 'package:flutter/foundation.dart';

class CustomTheme extends ChangeNotifier{
  //default theme light
  Color _baseColor = kLight;
  Color _fontColor = kDark;
  Color _baseColorEnd = kLigthEnd;
  String _laptopURL = 'assets/laptopDark.png';
  String _bubble = 'assets/bubble.svg';
  String _sdlc = 'assets/sdlc.svg';
  String _serviceTitle = 'assets/services.svg';
  String _methodologyTitle = 'assets/methodology.svg';
  String _techstackTitle = 'assets/techstack.svg';
  

  void setLight(){
    _baseColor = kLight;
    _fontColor = kDark;
    _baseColorEnd = kLigthEnd;
    _laptopURL = 'assets/laptopDark.png';
    _bubble = 'assets/bubble.svg';
    _sdlc = 'assets/sdlc.svg';
    _serviceTitle = 'assets/services.svg';
    _methodologyTitle = 'assets/methodology.svg';
    _techstackTitle = 'assets/techstack.svg';
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

  String get getBubble{
    return _bubble;
  }

  String get getSdlc{
    return _sdlc;
  }

  String get getServiceTitle{
    return _serviceTitle;
  }

  String get getMethodologyTitle{
    return _methodologyTitle;
  }

  String get getTechstackTitle{
    return _techstackTitle;
  }

}