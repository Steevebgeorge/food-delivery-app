import 'package:flutter/material.dart';
import 'package:food_delivery_ui/screens/onboardingscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      home: OnboardingScreen(), 
      debugShowCheckedModeBanner: false, 
    );
  }
}
