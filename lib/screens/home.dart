import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:vtu_flutter/screens/profile.dart';
import 'package:vtu_flutter/screens/top_up.dart';

import '../constants/service_box.dart';
import '../widgets/app_bar.dart';
import 'history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> screens = [
    HomePage(),
    TopUp(),
    Transactions(),
    Profile(),
  ];

  List images = [
    "assets/first",
    "assets/second",
    "assets/third",
    "assets/forth",
    "assets/fifth",
  ];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
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
          print(index);
          setState(() {});
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //head image
              MyAppBarCus(),
              SizedBox(
                height: 15,
              ),

              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Features',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

              //slider
          Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/first.png"), fit: BoxFit.cover)),
              ),

              // ListView.builder(
              //   itemCount: images.length,
              //     itemBuilder: (context, index) {
              //   return Container(
              //     height: 200,
              //     width: double.infinity,
              //     margin: EdgeInsets.only(left: 20, right: 20),
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(20),
              //         image: DecorationImage(
              //             image: AssetImage("${images[index]}.png"), fit: BoxFit.cover)),
              //   );
              // }),

              SizedBox(
                height: 15,
              ),

              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'More',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),

              //services container
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Box(
                      icon: Icons.network_cell,
                      name: 'Airtime',
                    ),
                    Box(
                      icon: Icons.web,
                      name: 'Data',
                    ),
                    Box(
                      icon: Icons.cable,
                      name: 'Cable',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Box(
                      icon: Icons.electric_bike,
                      name: 'PayBills',
                    ),
                    Box(
                      icon: Icons.web,
                      name: 'E-pins',
                    ),
                    Box(
                      icon: Icons.cable,
                      name: 'Airtime 2Cash',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
