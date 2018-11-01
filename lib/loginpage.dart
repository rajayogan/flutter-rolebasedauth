import 'package:flutter/material.dart';
import './allusers.dart';

import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            FirebaseAuth.instance
                .signInWithEmailAndPassword(
                    email: '<youremailhere>', password: '<passwordhere>')
                .then((val) {
              print('Logged In');
            });
          },
          elevation: 5.0,
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Login'),
        ),
      ),
    );
  }
}
