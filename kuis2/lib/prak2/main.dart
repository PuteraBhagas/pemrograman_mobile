import 'package:flutter/material.dart';
import 'package:kuis2/User.dart';

void main() {
  print(' === DEBUG: Check JSON s=Structure ===');


  User user = User(
    id: 1, 
    name: 'John Doe', 
    email: 'john@example.com', 
    createdAt: DateTime.now());

    Map<String, dynamic> userJson = user.toJson();
    print('User.toJson() result: $userJson');
    print('Field names: ${userJson.keys.toList()}');

    print('\n === TEST: JSON to Object ===');
    //gunakan nama field names yang sama dengan toJson() result
    Map<String, dynamic> jsonData ={
      'id': 2,
      'name': 'Jane Doe',
      'email': 'jane@example.com',
      'created_at': '2024-01-01T10:00:00.000Z',
    };
    // Debug: print Json structure
    print('JSON data to parse: $jsonData');
    print('JSON keys: ${jsonData.keys.toList()}');
    print('id: ${jsonData['id']} (type: ${jsonData['id'].runtimeType})');
    print('name: ${jsonData['name']} (type: ${jsonData['name'].runtimeType})');
    print('email: ${jsonData['email']} (type: ${jsonData['email'].runtimeType})');
    print('createdAt: ${jsonData['createdAt']} (type: ${jsonData['createdAt'].runtimeType})',);

    try{
      User userFromJson = User.fromJson(jsonData);
      print('Success: User from JSON: $userFromJson');
    } catch (e, stack) {
      print('ERROR: $e');
      print('Stack trace: $stack');
    }

    print('\n === TEST: Handle Missing Fields ===');

    Map<String, dynamic> incompleteJson ={
      'id': 3,
      //'name': missing;
      'email': 'test@example.com',
      //'createdAt': missing
    };

    try{
      User userFromIncomplete = User.fromJson(incompleteJson);
      print('User from incomplete JSON: $userFromIncomplete');
     } catch (e) {
      print('Error with iincomplete JSON: $e');
     }
}