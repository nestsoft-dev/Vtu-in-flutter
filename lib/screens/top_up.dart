import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';

class TopUp extends StatelessWidget {
   TopUp({Key? key}) : super(key: key);

 TextEditingController _amount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            //AppBar
            MyAppBarCus(),

            SizedBox(
              height: 30,
            ),

            //Input Amount
           Padding(padding: EdgeInsets.symmetric(horizontal: 20),child:  TextFormField(
             maxLength: 5,
             controller: _amount,
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
                 labelText: 'Enter Amount',
                 border: OutlineInputBorder(),
                 prefixIcon: Icon(
                   Icons.numbers,
                   color: Colors.blue,
                 )),
           ),),
            SizedBox(
              height: 20,
            ),


            GestureDetector(
              onTap: (){
              print(_amount.text);


    },
              

              child: Container(
                height: 60,
                margin: EdgeInsets.only(left: 50,right: 50),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Text(
                    'Top-Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
