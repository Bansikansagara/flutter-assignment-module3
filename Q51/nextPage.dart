import 'package:flutter/material.dart';

class NumberListScreen extends StatelessWidget {
  final int num1;
  final int num2;

  NumberListScreen(this.num1, this.num2);

  @override
  Widget build(BuildContext context) {
    List<Widget> numberWidgets = [];

    // Generate a list of numbers between num1 and num2
    for (int i = num1+1; i < num2; i++) {
      numberWidgets.add(Text(i.toString()));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Number Range List'),
      ),
      body: Center(
        child: ListView(
          children: numberWidgets,
        ),
      ),
    );
  }
}