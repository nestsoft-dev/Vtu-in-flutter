import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:vtu_flutter/screens/profile.dart';
import 'package:vtu_flutter/screens/top_up.dart';

import '../constants/service_box.dart';
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
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                ),
                child: Column(
                  children: [
                    //hello text
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hello,',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          CircleAvatar(
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    //show monney
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Available Balance',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\₦25,236.21',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 45),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
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
                  color: Colors.deepPurple,
                ),
              ),
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
                    Box(),
                    Box(),
                    Box(),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Box(),
                    Box(),
                    Box(),
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
