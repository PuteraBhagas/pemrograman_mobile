import 'package:flutter/material.dart';

void main() {
 runApp(PuteraApp ());
}

class PuteraApp extends StatelessWidget {
  const PuteraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "Putera App", 
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Putera App",
           style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Times New Roman',
            ),
            ),
      backgroundColor: Colors.green,
      centerTitle: true,
      foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hello, Putera",
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Times New Roman',
              ),
              ),
          Image.asset(
            "assets/images/putera.png",
            width: 300,
          ),
        ],
      ),
      ),
    );  
  }
}
