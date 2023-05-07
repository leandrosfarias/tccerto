import 'enums/statusTask.dart';

class Task {
  String title;
  DateTime deadline;
  bool done;
  StatusTask statusTask;

  Task(
      {required this.title,
      required this.deadline,
      this.done = false,
      required this.statusTask});

  factory Task.fromJson(Map<String, dynamic> json) => Task(
      title: json['title'],
      deadline: DateTime.parse(json['deadline']),
      done: json['done'] ?? false,
      statusTask: json['statusTask']);

  Map<String, dynamic> toJson() => {
        'title': title,
        'deadline': deadline.toIso8601String(),
        'done': done,
        'statusTask': statusTask
      };
}
