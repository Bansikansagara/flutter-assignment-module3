import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module3_59/login.dart';
import 'package:module3_59/registration.dart';

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

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: LoginPage(),

      debugShowCheckedModeBanner: false,
    );
  }

}