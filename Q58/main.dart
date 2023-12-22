import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module3_58/seek_bar.dart';

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

      home:  SeekBar(),

      debugShowCheckedModeBanner: false,
    );
  }

}