import 'package:flutter/material.dart';
import 'package:module3_59/registration.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isLoginForm = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
              child: Text('Login'),
            ),
          ],
        ),
      ),

          bottomNavigationBar: BottomAppBar(

            child: ElevatedButton(onPressed: () {

                setState(() {
                  _isLoginForm = !_isLoginForm;

                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                });

                  }, child: Text(_isLoginForm ? 'Create an Account' : 'Already have an Account? Sign In'),
                ),
                ),
              );
            }
}