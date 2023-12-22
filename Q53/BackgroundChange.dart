import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundChangerApp extends StatefulWidget
{
  @override
  _BackgroundChangerAppState createState() => _BackgroundChangerAppState();
}

class _BackgroundChangerAppState extends State<BackgroundChangerApp>
{
  Color _backgroundColor = Colors.white; // Initial background color

  void _changeBackgroundColor() {

    final randomColor = Color(0xFF000000 + (DateTime.now().microsecondsSinceEpoch & 0xFFFFFF));

    setState(() {
      _backgroundColor = randomColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Changer App'),
      ),

      body: Container(
        
        color: _backgroundColor,

        child: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              ElevatedButton(
                onPressed: _changeBackgroundColor,
                child: Text('Change Background'),
              ),

              SizedBox(height: 20.0),

              Text('Tap the button to change the background color!',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}