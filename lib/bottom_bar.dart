import 'package:ecommerce_app/consts/my_icons.dart';
import 'package:ecommerce_app/screens/cart.dart';
import 'package:ecommerce_app/screens/feeds.dart';
import 'package:ecommerce_app/screens/home.dart';
import 'package:ecommerce_app/screens/search.dart';
import 'package:ecommerce_app/screens/user.dart';

import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key key}) : super(key: key);

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}
class _BottomBarScreenState extends State<BottomBarScreen> {

  // List _pages = [
  //   HomeScreen(),
  //   FeedsScreen(),
  //   SearchScreen(),
  //   CartScreen(),
  //   UserScreen(),
  // ];
  List<Map<String, Object>> _pages;
  int _selectedIndex = 4; // for now to work with the user screen
  void _selectedPage(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {
        "page": HomeScreen(),
        "title": "Home Screen",
      },
      {
        "page": FeedsScreen(),
        "title": "Feeds Screen",
      },
      {
        "page": SearchScreen(),
        "title": "Search Screen",
      },
      {
        "page": CartScreen(),
        "title": "Cart Screen",
      },
      {
        "page": UserInfo(),
        "title": "User Screen",
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight * 0.98,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              onTap: _selectedPage,
              backgroundColor: Theme.of(context).primaryColor,
              unselectedItemColor: Theme.of(context).textSelectionColor,
              selectedItemColor: Colors.purple,
              currentIndex: _selectedIndex,
              //selectedLabelStyle: TextStyle(fontSize: 16),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.rss),
                  label: 'Feeds',
                ),
                BottomNavigationBarItem(
                  activeIcon: null,
                  icon: Icon(null),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.cart),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.user),
                  label: 'User',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: 'Search',
          elevation: 4,
          child: Icon(MyAppIcons.search),
          onPressed: () => setState(() {
            _selectedIndex = 2;
          }),
        ),
      ),
    );
  }
}
