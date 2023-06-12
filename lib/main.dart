import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sujatathapatodoapp/screens/todo_provider.dart';
import 'package:sujatathapatodoapp/screens/todo_screen.dart';
// import 'package:your_app/todo_provider.dart';
// import 'package:your_app/screens/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TodoProvider(),
      child: MaterialApp(
        title: 'Todo App',
        home: TodoScreen(),
      ),
    );
  }
}
