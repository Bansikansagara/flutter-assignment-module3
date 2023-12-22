import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class reverse extends StatefulWidget
{
  @override
  reverseState createState() => reverseState();

}

class reverseState extends State<reverse>
{
  TextEditingController _numberController = TextEditingController();
  String _reverseNumber = '';

  void _calculateReverse() {
    String inputNumber = _numberController.text;
    String reversedNumber = inputNumber.split('').reversed.join();
    setState(() {
      _reverseNumber = reversedNumber;
    });
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Number App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateReverse,
              child: Text('Calculate Reverse'),
            ),
            SizedBox(height: 20),
            Text(
              'Reversed Number: $_reverseNumber',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  }