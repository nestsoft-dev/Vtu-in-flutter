import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  IconData icon;
  String name;
   Box({Key? key,required this.icon,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: Icon(icon,color: Colors.black,),
          ),
          SizedBox(height: 30,),
          Text(name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)
        ],
      ),
    );
  }
}
