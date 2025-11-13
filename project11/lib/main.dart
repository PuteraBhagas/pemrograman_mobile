import 'package:flutter/material.dart';
import 'package:project11/view.dart';

void main() {
  runApp(MyApp());
}

class AppSettings {
  bool isDarkMode = false;
  String userName = 'Teman';
  int fontSize = 20;
  

  Color get backgroundColor {
    return isDarkMode ? Colors.grey[900]! : Colors.white;

  }

  Color get textColor {
    return isDarkMode ? Colors.white : Colors.black;
  }

  String get greeting {
    return "Halo, $userName!";
  }
} 
