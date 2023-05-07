import 'package:tccerto/Models/Enums/statusProject.dart';
import 'package:tccerto/Models/task.dart';
import 'package:tccerto/Models/user.dart';

class Project {
  final String name;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final StatusProject status;
  final List<Task> tasksList;
  final User user;

  Project({
    required this.name,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.status,
    required this.tasksList,
    required this.user,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      name: json['name'],
      description: json['description'],
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
      status: StatusProject.values[json['status']],
      tasksList: (json['tasksList'] as List<dynamic>)
          .map((task) => Task.fromJson(task))
          .toList(),
      user: json['user'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'status': status.index,
      'tasksList': tasksList.map((task) => task.toJson()).toList(),
      'user': user,
    };
  }
}
