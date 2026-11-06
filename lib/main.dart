import 'package:flutter/material.dart';
import '../view/button_class.dart';
import '../view/navbar.dart';
// import '../view/navbar_two.dart';
// import '../view/navbar_three.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationExample(),
    );
  }
}
