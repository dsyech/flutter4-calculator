import 'package:t4calculator/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        accentColor: Colors.orange,
      ),
      home: Home(),
    );
  }
}