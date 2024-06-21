import 'package:advance_todolist_app/model/productmodel.dart';
import 'package:flutter/material.dart';

class ProductController extends ChangeNotifier {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  int taskcountr = 0;
  List<ToDOModel> todolist = [];
  void addtodo(ToDOModel obj1, bool doedit) {
    final Title = titleController.text;
    final Description = descriptionController.text;
    final Date = dateController.text;
    if (Title.trim().isNotEmpty &&
        Description.trim().isNotEmpty &&
        Date.trim().isNotEmpty) {
      taskcountr++;
      ToDOModel obj = ToDOModel(taskcountr,
          title: Title, description: Description, date: Date);
      todolist.add(obj);
      notifyListeners();
    }
    clearController();
  }

  void clearController() {
    titleController.clear();
    dateController.clear();
    dateController.clear();
  }

  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    dateController.dispose();
  }
}
