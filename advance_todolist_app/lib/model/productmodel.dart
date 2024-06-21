class ToDOModel {
  int task;
  final String? title;
  final String description;
  final String? date;

  ToDOModel(this.task,
      {required this.title, required this.description, required this.date});

  Map<String, dynamic> todomap() {
    return {
      'flag': task,
      'title': title,
      'description': description,
      'date': date
    };
  }

  @override
  String toString() {
    return '{flag :$task,title:$title,description:$description,date:$date}';
  }
}
