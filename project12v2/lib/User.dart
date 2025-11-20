import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'User.g.dart';


class User{
  final int? id;
  final String? name;
  final String? email;
  final DateTime? createdAt;

  User({this.id, this.name, this.email, this.createdAt});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: _parseInt(json['id']),
      name: _parseString(json['name']),
      email: _parseString(json['email']),
      createdAt: _parseDateTime(
        json['createdAt'] ?? json['createdAt']),
    );
  }

  static int? _parseInt(dynamic value){
    if (value == null) return null;
    if (value is int) return value;
    if (value is String) return int.tryParse(value);
    if (value is num) return value.toInt();
    return null;
  }

  static String? _parseString(dynamic value){
    if (value == null) return null;
    if (value is String) return value;
    return value.toString();
  }

  static DateTime? _parseDateTime(dynamic value){
    if (value == null) return null;
    if (value is DateTime) return value;
    if (value is String){
      try{
        return DateTime.parse(value);
      } catch (e) {
        return null;
      }
    }
    return null;
  }
  // method toJson yang benar -- gunakan field instance, bukan parameter json
  Map<String, dynamic>toJson(){
    return{
      'id': id,
      'name': name,
      'email': email,
      'created_at': createdAt?.toIso8601String(),// meng convert datetime ke String
    };
  }

 // menambahkan method toString untuk debugging
 @override
 String toString(){
  return 'SafeUser{id:$id, name:$name, email:$email, createdAt:$createdAt}';
 }   

 User copyWith({int? id, String? name, String? email, DateTime? createdAt}) {
  return User(
    id: id ?? this.id,
    name: name ?? this.name,
    email: email ?? this.email,
    createdAt: createdAt ?? this.createdAt,
  );
 }

 // method untuk validasi
 bool get isValid => id != null && name != null && name!.isNotEmpty;

 // method untuk compare objects
 @override 
 bool operator ==(Object other) =>
  identical(this, other) || 
  other is User &&
  runtimeType == other.runtimeType &&
  id == other.id &&
  name == other.name &&
  email == other.email &&
  createdAt == other.createdAt;
 
  @override 
  int get hasCode => 
    id.hashCode ^ name.hashCode ^ email.hashCode ^ createdAt.hashCode;
}
