import 'package:flutter/material.dart';
import 'package:open_street_map/widgets/bottom_navigation_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: BottomNavigationBarWidget());
  }
}
