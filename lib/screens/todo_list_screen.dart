import 'package:flutter/material.dart';
import 'package:flutter_sqflite_todo_app/main.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({Key? key}) : super(key: key);

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Todo List'),
          backgroundColor: Colors.deepPurpleAccent),
      body: getTodoListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(SqfliteTodoApp.addTodoPageRoute);
        },
        backgroundColor: Colors.lime,
        tooltip: 'Add New Todo',
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  getTodoListView() {
    return ListView.builder(
      itemBuilder: (context, index) {
        Card(
          color: Colors.white,
          elevation: 2,
          child: ListTile(
            onTap: () {
              debugPrint('Todo selected');
              Navigator.of(context).pushNamed(SqfliteTodoApp.addTodoPageRoute);
            },
            leading: const CircleAvatar(
              backgroundColor: Colors.lime,
              child: Icon(Icons.arrow_forward_ios_rounded),
            ),
            title: const Text('Todo name'),
            subtitle: const Text('Todo description'),
            trailing: IconButton(
                onPressed: () {
                  debugPrint('Deleted');
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                )),
          ),
        );
      },
    );
  }
}
