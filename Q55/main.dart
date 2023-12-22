import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module3_55/text_view.dart';


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

      home:  TextView(),

      debugShowCheckedModeBanner: false,
    );
  }

}