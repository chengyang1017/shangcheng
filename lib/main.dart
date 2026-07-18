import 'package:flutter/material.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'themes/theme_provider.dart';
import 'main_page.dart';
void main() {
   runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeProvider.themeData,
      home: const MainPage(),
    );
  }
}
