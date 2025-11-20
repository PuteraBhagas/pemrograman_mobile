import 'package:flutter/material.dart';
import 'package:project12v2/User.dart';

void main() {
  User user = User(
    id: 1, 
    name: 'John Doe', 
    email: 'john@example.com', 
    createdAt: DateTime.now());

    Map<String, dynamic> userJson = user.toJson();
    print('User JSON: $userJson');

    Map<String, dynamic> jsonData ={
      'id': 2,
      'name': 'Jane Doe',
      'email': 'jane@example.com',
      'created_at': '2024-01-01T10:00:00.000Z',
    };

    User userFromJson = User.fromJson(jsonData);
    print('User from JSON: ${userFromJson.name}');
}