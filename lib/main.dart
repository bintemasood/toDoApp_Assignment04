import 'package:assignment04/home_page.dart';
import 'package:flutter/material.dart';
//import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
