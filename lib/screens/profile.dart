import 'package:flutter/material.dart';

import '../widgets/display_tile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DisplayTile(placeholde: 'Name:', placeName: 'Ikenna Obetta',),
          SizedBox(height: 2,),
          DisplayTile(placeholde: 'Email Address:', placeName: 'Obettaikenna19@gmail.com',),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contact Support',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)

            ],
          ),

          SizedBox(height: 10,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.mail,),
                    SizedBox(width: 10,),
                    Text('NetsoftDevelopers@gmail.com',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.call,),
                    SizedBox(width: 10,),
                    Text('+2347011187220',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.facebook,),
                    SizedBox(width: 10,),
                    Text('Netsoft-Developers',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.whatsapp,),
                    SizedBox(width: 10,),
                    Text('+2347011187220',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,),)
                  ],
                ),
              ),

            ],
          )

        ],
      ),
    );
  }
}
