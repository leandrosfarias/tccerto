class Task {
  String title;
  DateTime deadline;
  bool done;

  Task({required this.title, required this.deadline, this.done = false});

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        title: json['title'],
        deadline: DateTime.parse(json['deadline']),
        done: json['done'] ?? false,
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'deadline': deadline.toIso8601String(),
        'done': done,
      };
}
