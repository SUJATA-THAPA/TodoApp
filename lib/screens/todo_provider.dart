import 'package:flutter/material.dart';
import 'package:sujatathapatodoapp/screens/todo_model.dart';
// import 'package:your_app/todo_model.dart';

class TodoProvider extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }

  void toggleTodoCompletion(Todo todo) {
    todo.isCompleted = !todo.isCompleted;
    notifyListeners();
  }
}
