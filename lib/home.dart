import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:forms/widgets/textfield.dart';
import 'models/login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Demo'),
        ),
        body: TestForm(),
      ),
    );
  }
}

class TestForm extends StatefulWidget {
  @override
  _TestFormState createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  final _formKey = GlobalKey<FormState>();
  LogIn login = LogIn();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFieldWidget(
            hintText: 'Name',
            validator: (String value) => login.validateName(value),
            onSaved: (String value) {
              login.name = value;
            },
          ),
          TextFieldWidget(
            hintText: 'Email',
            validator: (String value) => login.validateEmail(value),
            onSaved: (String value) {
              login.email = value;
            },
          ),
          RaisedButton(
            color: Colors.blueAccent,
            onPressed: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                print(jsonEncode(login));
              }
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
