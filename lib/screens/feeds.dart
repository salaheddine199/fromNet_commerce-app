import 'package:flutter/material.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Feeds ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
