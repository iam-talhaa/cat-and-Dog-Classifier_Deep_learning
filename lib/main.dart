import 'package:cat_dog_calssifier/home_screen.dart';
import 'package:cat_dog_calssifier/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Cat_Dog_classifier());
}

class Cat_Dog_classifier extends StatefulWidget {
  const Cat_Dog_classifier({super.key});

  @override
  State<Cat_Dog_classifier> createState() => _Cat_Dog_classifierState();
}

class _Cat_Dog_classifierState extends State<Cat_Dog_classifier> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
