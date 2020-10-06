import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      height: MediaQuery.of(context).size.height * 0.23,
      width: MediaQuery.of(context).size.width * 0.75,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(15),
      //   color: Colors.lightBlueAccent,
      // ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.lightBlueAccent,
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(child: Icon(Icons.brightness_7, color: Colors.white,),),
                  SizedBox(width: 10,),
                  Text('Mada Card', style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '6219   2910   7790   7632',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
