import 'package:tccerto/Models/project.dart';

class User {
  String name;
  String email;
  String password;
  List<Project> projects;

  User(
      {required this.name,
      required this.email,
      required this.password,
      required this.projects});

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json['name'],
        email: json['email'],
        password: json['password'],
        projects: json['projects'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': password,
        'projects': projects,
      };
}
