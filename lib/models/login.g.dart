// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogIn _$LogInFromJson(Map<String, dynamic> json) {
  return LogIn(
    name: json['name'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$LogInToJson(LogIn instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };
