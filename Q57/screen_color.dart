import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class displayScreen extends StatefulWidget
{
  @override
  displayState createState() => displayState();

}

class displayState extends State<displayScreen>
{
  Color selectedColor = Colors.green;

  void updatedColor(Color newColor)
  {
    setState(() {
      selectedColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      body: Container(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Text("Select Color"),

            SizedBox(height: 10),

            Container(

              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: selectedColor,
            ),

            SizedBox(height: 20),


            RadioListTile(
              title: Text("Green"),
              value: Colors.green,
              groupValue: selectedColor,
              onChanged:  (value){
                updatedColor(value!);
              },
            ),

            RadioListTile(
              title: Text("Grey"),
              value: Colors.grey,
              groupValue: selectedColor,
              onChanged: (value) {
                updatedColor(value!);
                },
            ),

            RadioListTile(
              title: Text("Red"),
              value: Colors.red,
              groupValue: selectedColor,
              onChanged:  (value){
                updatedColor(value!);
              },
            ),

            RadioListTile(
              title: Text("Blue"),
              value: Colors.blue,
              groupValue: selectedColor,
              onChanged:  (value){
                updatedColor(value!);
              },
            ),

            RadioListTile(
              title: Text("Yellow"),
              value: Colors.yellow,
              groupValue: selectedColor,
              onChanged:  (value){
                updatedColor(value!);
              },
            ),
          ],
        ),
      ),
    );
  }

}