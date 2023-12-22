import 'package:flutter/material.dart';
import 'package:module3_59/login.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  bool _isLoginForm = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(
        title: Text('Registration'),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),

            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),

            SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: () {

                String email = _emailController.text;
                String password = _passwordController.text;
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(

        child: ElevatedButton(onPressed: () {

          setState(() {
            _isLoginForm = !_isLoginForm;

            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          });

        }, child: Text(_isLoginForm ? 'Already have an Account? Sign In' : 'Create an Account'),
        ),
      ),
    );
  }



}