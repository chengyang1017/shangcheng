import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,

  colorScheme: ColorScheme.light(
    // 页面大背景
    surface: const Color(0xFFF5F5F5),

    // 主要按钮、选中状态
    primary: const Color(0xFF333333),

    // 次要按钮、标签颜色
    secondary: const Color(0xFF757575),

    // 卡片、输入框等较浅区域
    tertiary: const Color(0xFFFFFFFF),

    // 与 primary 相反的浅色
    inversePrimary: const Color(0xFFF0F0F0),

    // 背景上的主要文字颜色
    onSurface: const Color(0xFF1C1C1C),

    // primary 上面的文字颜色
    onPrimary: Colors.white,

    // secondary 上面的文字颜色
    onSecondary: Colors.white,
  ),

  scaffoldBackgroundColor: const Color(0xFFF5F5F5),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFF5F5F5),
    foregroundColor: Color(0xFF1C1C1C),
    elevation: 0,
  ),

  cardTheme: const CardThemeData(
    color: Colors.white,
    elevation: 0,
    margin: EdgeInsets.zero,
  ),

  dividerColor: const Color(0xFFE2E2E2),
);