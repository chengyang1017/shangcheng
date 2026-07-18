import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/dark_mode.dart';
import 'package:flutter_application_1/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier{
  //默认是浅色模式
  ThemeData _themeData = lightMode;

  //把变量放进getter
  ThemeData get themeData => _themeData;


  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData){
    _themeData = themeData;

    notifyListeners();
  }

 // 在浅色主题和深色主题之间切换
  void toggleTheme(){
    // 如果当前是浅色主题，就切换成深色主题
    if(_themeData == lightMode){
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}