import 'package:flutter/material.dart';

import 'services/usermngmt.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  UserManagement userObj = new UserManagement();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: userObj.handleAuth(),
    );
  }
}

// class MyHomePage extends StatefulWidget {

//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Login'),
//       ),
//       body: new Center(
        
//       ), 
//     );
//   }
// }
