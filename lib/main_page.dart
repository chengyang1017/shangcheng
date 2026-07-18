import 'package:flutter/material.dart';
import 'home.dart';
import 'setting_page.dart';
import 'cart_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    CartPage(),
    SettingPage()
  ];

  void _changePage(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: _changePage,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined), 
            selectedIcon: Icon(Icons.home), 
            label: '主页',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined), 
            selectedIcon: Icon(Icons.shopping_cart), 
            label: '购物车',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined), 
            selectedIcon: Icon(Icons.settings), 
            label: '设置',
          ),
        ],
      ),
    );
  }
}