import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  String operation = 'Add';
  double resultValue = 0.0;

  void calculateResult() {
    double num1 = double.tryParse(number1Controller.text) ?? 0;
    double num2 = double.tryParse(number2Controller.text) ?? 0;


    setState(() {
      switch (operation) {
        case 'Add':
          resultValue = num1 + num2;
          break;
        case 'Subtract':
          resultValue = num1 - num2;
          break;
        case 'Multiply':
          resultValue = num1 * num2;
          break;
        case 'Divide':
          if (num2 != 0) {
            resultValue = num1 / num2;
          } else {
            resultValue = 0.0;
            return;
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'Add',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value!;
                    });
                  },
                ),
                Text('Add'),
                Radio(
                  value: 'Subtract',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value!;
                    });
                  },
                ),
                Text('Subtract'),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Radio(
                      value: 'Multiply',
                      groupValue: operation,
                      onChanged: (value) {
                        setState(() {
                          operation = value!;
                        });
                      },
                    ),
                    Text('Multiply'),
                    Radio(
                      value: 'Divide',
                      groupValue: operation,
                      onChanged: (value) {
                        setState(() {
                          operation = value!;
                        });
                      },
                    ),
                    Text('Divide'),
                  ],
                ),
              ],
            ),
            TextField(
              controller: number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Number 1'),
            ),
            TextField(
              controller: number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Number 2'),
            ),
            ElevatedButton(
              onPressed: calculateResult,
              child: Text('Calculate'),
            ),
            Text("Result: $resultValue"),
          ],
        ),
      ),
    );
  }
}