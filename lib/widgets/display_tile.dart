import 'package:flutter/material.dart';

class DisplayTile extends StatelessWidget {
  String placeholde,placeName;

   DisplayTile({Key? key, required this.placeholde, required this.placeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 20,right: 20,left: 20),
      decoration: BoxDecoration(
        color: Colors.blue.shade200,
        border: Border.all(width: 1,color: Colors.blueAccent,style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Icon(Icons.arrow_forward_ios),
          SizedBox(width: 20,),
          Column(
            children: [
              SizedBox(height: 12,),
              Text(placeholde,style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              Text(
                placeName,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}
