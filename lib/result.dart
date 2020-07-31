import 'package:flutter/material.dart';

import 'models/models.dart';

class Result extends StatelessWidget {
  final LogIn login;
  Result({this.login});
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Successful')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(login.name, style: TextStyle(fontSize: 22)),
            Text(login.email, style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    ));
  }
}
