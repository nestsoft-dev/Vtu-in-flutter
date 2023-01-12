import 'package:flutter/material.dart';

import '../widgets/list_item.dart';

class Transactions extends StatelessWidget {
   Transactions({Key? key}) : super(key: key);

  List history = [];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: 5,
            itemBuilder: (context,index){
          return ListItem();
        }),
      ),
    );
  }
}

