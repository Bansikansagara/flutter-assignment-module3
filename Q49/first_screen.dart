import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module3_49/second_screen.dart';

class MyApp2 extends StatefulWidget{
  @override
  NewState createState() => NewState();


}

class NewState extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: Column(

          children: [
            Row(
                children:[

                  Container(

                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.red),
                      margin: EdgeInsets.only(top: 5)
                  ),
                ]
            ),
            Row(
                children:[
                  Container(

                      height: 150,
                      width: 177,
                      decoration: BoxDecoration(color: Colors.lightBlue),
                      margin: EdgeInsets.only(top: 5)
                  ),
                  Container(

                      height: 150,
                      width: 177,
                      decoration: BoxDecoration(color: Colors.lightBlue),
                      margin: EdgeInsets.only(top: 5,left: 5)
                  ),
                ]
            ),
            Row(
                children:[
                  Container(

                      height: 150,
                      width: 177,
                      decoration: BoxDecoration(color: Colors.lightBlue),
                      margin: EdgeInsets.only(top: 5)
                  ),
                  Container(

                      height: 150,
                      width: 177,
                      decoration: BoxDecoration(color: Colors.lightBlue),
                      margin: EdgeInsets.only(top: 5,left: 5)
                  ),
                ]
            ),
            Row(
              children: [

                Container(
                  height: 125,
                  width: 116,
                  decoration: BoxDecoration(color: Colors.yellow),
                  margin: EdgeInsets.only(top: 5),
                ),
                Container(
                  height: 125,
                  width: 116,
                  decoration: BoxDecoration(color: Colors.yellow),
                  margin: EdgeInsets.only(top: 5,left: 5),
                ),
                Container(
                  height: 125,
                  width: 116,
                  decoration: BoxDecoration(color: Colors.yellow),
                  margin: EdgeInsets.only(top: 5,left: 5),
                ),
              ],
            ),
            Row(
              children: [

                Container(
                  height: 125,
                  width: 116,
                  decoration: BoxDecoration(color: Colors.yellow),
                  margin: EdgeInsets.only(top: 5),
                ),
                Container(
                  height: 125,
                  width: 116,
                  decoration: BoxDecoration(color: Colors.yellow),
                  margin: EdgeInsets.only(top: 5,left: 5),
                ),

                Container(
                  height: 125,
                  width: 116,
                  decoration: BoxDecoration(color: Colors.yellow),
                  margin: EdgeInsets.only(top: 5,left: 5),

                    child: FloatingActionButton(onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => WebPhoto()));

                    },child: Icon(Icons.arrow_forward_ios, size: 20,),

                ),
                ),
              ],
            ),
          ],
        ),
        );
    }
}
