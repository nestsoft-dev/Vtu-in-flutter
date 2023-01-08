import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name;
    return  Container(
      height: 150,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      child: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Icon(Icons.network_cell,color: Colors.black,),
          ),
          SizedBox(height: 30,),
          Text('Airtime',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)
        ],
      ),
    );
  }
}
