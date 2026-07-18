import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,

  colorScheme: const ColorScheme.dark(
    // 页面、卡片的主要背景
    surface: Color(0xFF121212),

    // 主要按钮、图标、选中状态
    primary: Color(0xFFE0E0E0),

    // 次要按钮、未选中图标
    secondary: Color(0xFFA8A8A8),

    // 输入框、列表项、较高层级容器
    tertiary: Color(0xFF2A2A2A),

    // 与 primary 相反的深色
    inversePrimary: Color(0xFF303030),

    // surface 上的文字
    onSurface: Color(0xFFF1F1F1),

    // primary 上面的文字
    onPrimary: Color(0xFF181818),

    // secondary 上面的文字
    onSecondary: Color(0xFF181818),
  ),

  scaffoldBackgroundColor: const Color(0xFF121212),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF121212),
    foregroundColor: Color(0xFFF1F1F1),
    elevation: 0,
  ),

  cardTheme: const CardThemeData(
    color: Color(0xFF1E1E1E),
    elevation: 0,
    margin: EdgeInsets.zero,
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF242424),
    hintStyle: const TextStyle(
      color: Color(0xFF888888),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  ),

  dividerColor: const Color(0xFF333333),
);