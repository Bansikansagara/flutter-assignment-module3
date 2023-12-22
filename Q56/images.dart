import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class images extends StatefulWidget
{
  @override
  ImageState createState() => ImageState();

}

class ImageState extends State<images>
{
  bool isChecked = false;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      body: Center(

        child: Container(

          child: Column(

            children: [

              Column(

                children: [

                  SizedBox(height: 200),

                  Image.network("https://unbought-milk.000webhostapp.com/images/butterfly.jpg", width: 100, height: 100),

                  SizedBox(height: 40),

                  Row(

                    children: [

                      SizedBox(width: 20),

                      Image.network("https://unbought-milk.000webhostapp.com/images/nature.jpg", width: 50, height: 100),

                      SizedBox(width: 70,),

                      Text("TextView", style: TextStyle(fontSize: 20),),

                      SizedBox(width: 70),

                      Image.network("https://unbought-milk.000webhostapp.com/images/tree.jpg", width: 50, height: 100),
                    ],
                  ),

                  Column(

                    children: [

                      SizedBox(height: 50),

                      Image.network("https://unbought-milk.000webhostapp.com/images/waterfall.jpg", width: 100, height: 100),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}