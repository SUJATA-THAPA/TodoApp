import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sujatathapatodoapp/screens/todo_provider.dart';
// import 'package:your_app/todo_model.dart';
// import 'package:your_app/todo_provider.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todoProvider = Provider.of<TodoProvider>(context);
    final todos = todoProvider.todos;

    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return ListTile(
            title: Text(todo.title),
            leading: Checkbox(
              value: todo.isCompleted,
              onChanged: (_) => todoProvider.toggleTodoCompletion(todo),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => todoProvider.removeTodo(todo),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Container();
            }
          );
        }
      ),
    );
        }
  }
             
