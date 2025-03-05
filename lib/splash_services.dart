import 'dart:async';

import 'package:cat_dog_calssifier/home_screen.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void Login(context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomeScreen())));
  }
}
