import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return Scaffold(
      body: Expanded(
        child: ListView(
          children: [
            ListTile(
              title: Text("Dark mode"),
              trailing: CupertinoSwitch(
                value: themeProvider.isDarkMode,
                onChanged: (_) {context.read<ThemeProvider>().toggleTheme();},
              ),
            )
          ],
        )
      )
    );
  }
}