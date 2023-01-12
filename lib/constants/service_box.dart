import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  IconData icon;
  String name;
  int mycolor;
   Box({Key? key,required this.icon,required this.name,required this.mycolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 150,
      width: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(mycolor),
        border: Border.all(color: Colors.purple.shade200,width: 1.0)
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
