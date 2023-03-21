class Task {
  String name;
  DateTime deadline;
  bool isCompleted;

  Task({required this.name, required this.deadline, this.isCompleted = false});

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        name: json['name'],
        deadline: DateTime.parse(json['deadline']),
        isCompleted: json['isCompleted'] ?? false,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'deadline': deadline.toIso8601String(),
        'isCompleted': isCompleted,
      };
}
