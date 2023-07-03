// ignore_for_file: public_member_api_docs, sort_constructors_first
enum Filter { all, active, completedStatus }

class Todo {
  final int id;
  final String title;
  final String description;
  final bool completed;
  final bool deleted;

  const Todo({
    required this.id,
    required this.title,
    this.completed = false,
    this.deleted = false,
    required this.description,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'completed': completed,
      'deleted': deleted
    };
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        completed: json['completed'],
        deleted: json['deleted']);
  }

  // Todo copyWith({
  //   int? id,
  //   String? title,
  //   String? description,
  //   bool? completed,
  //   bool? deleted,
  // }) {
  //   return Todo(
  //     id: id ?? this.id,
  //     title: title ?? this.title,
  //     description: description ?? this.description,
  //     completed: completed ?? this.completed,
  //     deleted: deleted ?? this.deleted,
  //   );
  // }
}
