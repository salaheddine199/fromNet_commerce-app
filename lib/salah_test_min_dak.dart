import 'package:flutter/material.dart';

class SalahMinDakTest extends StatefulWidget {
  const SalahMinDakTest({Key key}) : super(key: key);

  @override
  _SalahMinDakTestState createState() => _SalahMinDakTestState();
}
class _SalahMinDakTestState extends State<SalahMinDakTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("Sliver App Bar"),
            centerTitle: true,
            expandedHeight: 200,
            backgroundColor: Colors.red,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index){
                return Text("Data");
                },
                childCount: 10
              ),
          ),
          // SliverFillRemaining(
          //   child: Text("Hello world"),
          // ),
        ],
      ),
    );
  }
}
