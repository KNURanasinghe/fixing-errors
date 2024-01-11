class Contact {
  int? id;
  String? title;
  int? date;
  String? priority;
  int? status = 0;
  bool? isDone = false;

  Contact({this.title, this.date, this.priority, int? id, bool? isDone});
  Contact.withId({
    this.id,
    this.title,
    this.date,
    this.priority,
  });

  static const colIsDone = "isDone";
  static const tblName = "task_table";
  static const colId = "id";
  static const colTitle = "title";
  static const colDate = "date";
  static const colPriority = "priority";

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      colTitle: title,
      colPriority: priority,
      colDate: date,
      colIsDone: false
    };
    if (id != null) {
      map[colId] = id;
    }
    return map;
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact.withId(
      id: map[colId],
      title: map[colTitle],
      date: map[colDate] != null ? int.tryParse(map[colDate]) : null,
      priority: map[colPriority],
    );
  }
}
