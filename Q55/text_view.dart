import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextView extends StatefulWidget {
  @override
  TextViewtState createState() => TextViewtState();
}

class TextViewtState extends State<TextView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (newValue) {
                setState(() {
                  isChecked = newValue!;
                });
              },
            ),
            if (isChecked)
              Text(
                'TextView is visible!',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),

    );
  }
}