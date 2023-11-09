import 'package:flutter/material.dart';
import 'package:flutter_sqflite_todo_app/screens/add_todo_screen.dart';
import 'package:flutter_sqflite_todo_app/screens/todo_list_screen.dart';

void main() {
  runApp(const SqfliteTodoApp());
}

class SqfliteTodoApp extends StatelessWidget {
  const SqfliteTodoApp({super.key});

  static String todoListPageRoute = 'todo-list-page';
  static String addTodoPageRoute = '/add-todo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: todoListPageRoute,
      routes: {
        todoListPageRoute: (context) => const TodoListScreen(),
        addTodoPageRoute: (context) => const AddTodoScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
