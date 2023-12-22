import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module3_54/plus_button.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(

      home:  plusButton(),

      debugShowCheckedModeBanner: false,
    );
  }

}