import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class plusButton extends StatefulWidget
{

  @override
  plusButtonState createState() => plusButtonState();
}

class plusButtonState extends State<plusButton>
{
  double custFontSize = 20;



  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      
      appBar: AppBar(title: Text('Background Changer App'),),
      
      body: Center(
        
        child: Center(
          
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [


             FloatingActionButton(onPressed: (){

               plusFontSize();

             },
                 child: const Icon(Icons.add)
             ),

              SizedBox(height: 30),

              FloatingActionButton(onPressed: (){

                minusFontSize();

              },
                  child: const Icon(Icons.minimize)
              ),
              
              SizedBox(height: 20.0),
              
              Text(' Tap the button to increase OR decrease font size!', style: TextStyle(fontSize: custFontSize),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void plusFontSize()
  {
    setState(() {
      custFontSize +=2;
    });
  }

  void minusFontSize()
  {
    setState(() {
      custFontSize -=2;
    });
  }
  
}

 
   
  
