enum Filter { all, active, completedStatus }

class Todo {
  final String id;
  final String description;
  final bool completedStatus;

  const Todo(
      {required this.id,
      required this.description,
      this.completedStatus = false});
}
