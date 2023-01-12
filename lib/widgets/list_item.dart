import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {

   ListItem({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return const ListTile(
      leading: Icon(Icons.history,color: Colors.blue,),
      title: Text('Airtime purchase was a success',style: TextStyle(color: Colors.black),),
      subtitle: Text("DateTime.now() as String"),
    );
  }
}
