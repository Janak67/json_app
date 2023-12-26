class TodoModel {
  int? id, userId;
  String? title;
  bool? completed;

  TodoModel({
    this.id,
    this.userId,
    this.title,
    this.completed,
  });

  factory TodoModel.mapToModel(Map m1) {
    return TodoModel(
      id: m1['id'],
      userId: m1['userId'],
      title: m1['title'],
      completed: m1['completed'],
    );
  }
}
