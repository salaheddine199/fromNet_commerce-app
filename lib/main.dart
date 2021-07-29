import 'package:ecommerce_app/salah_test_min_dak.dart';
import 'package:flutter/material.dart';
import 'bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce Application',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: BottomBarScreen(),
    );
  }
}
