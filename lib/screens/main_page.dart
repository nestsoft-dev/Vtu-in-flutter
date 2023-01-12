import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:vtu_flutter/screens/profile.dart';
import 'package:vtu_flutter/screens/top_up.dart';

import 'history.dart';
import 'home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List screens = [
    HomePage(),
    TopUp(),
    Transactions(),
    Profile(),
  ];

  int currentIndex = 0;

  void onTap(int index){
 setState(() {
   currentIndex = index;
 });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: currentIndex,
        items: [
          Icon(
            Icons.home_rounded,
            color: Colors.indigo,
          ),
          Icon(
            Icons.monetization_on,
            color: Colors.indigo,
          ),
          Icon(
            Icons.history,
            color: Colors.indigo,
          ),
          Icon(
            Icons.person,
            color: Colors.indigo,
          ),
        ],
        color: Colors.deepPurple.shade200,
        height: 70,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white60,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
        onTap(index);
        },
      ),
      body: screens[currentIndex],
    );
  }
}
