import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Search ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
