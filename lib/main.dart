import 'package:flutter/material.dart';
import 'pages/animation.dart'; 
import 'package:aaroha/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      debugShowCheckedModeBanner: false,
      home: const AnimationScreen(), 
    );
  }
}
