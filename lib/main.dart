import 'package:doctor_hunt/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(title: "title"));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required String title});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}