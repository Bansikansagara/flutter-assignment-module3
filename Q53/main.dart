import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BackgroundChange.dart';

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

      home: BackgroundChangerApp(),

      debugShowCheckedModeBanner: false,
    );
  }

}