import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
class LogIn {
  String name;
  String email;

  LogIn({this.name, this.email});

  factory LogIn.fromJson(Map<String, dynamic> json) => _$LogInFromJson(json);

  Map<String, dynamic> toJson() => _$LogInToJson(this);

  String validateName(String name) {
    final nameRegex = RegExp(r'^[a-zA-Z ]*$');

    if (name == null || name.length == 0) {
      return 'Name cannot be empty';
    } else if (!nameRegex.hasMatch(name)) {
      return 'Invalid Name';
    }
    return null;
  }

  String validateEmail(String email) {
    final emailRegex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if (email == null || email.length == 0) {
      return 'Email cannot be empty';
    } else if (!emailRegex.hasMatch(email)) {
      return 'Invalid Email';
    }

    return null;
  }
}
