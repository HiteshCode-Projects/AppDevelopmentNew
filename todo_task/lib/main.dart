import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//Model
class Todo {
  final int id;
  final String title;
  final bool completed;

  Todo({required this.id, required this.title, required this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}

void main() {
  runApp(TodoApp());
}

//UI
class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TodoScreen());
  }
}

class TodoScreen extends StatefulWidget {
  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> todos = [];

  bool isLoading = true;

  Future<void> fetchTodos() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/todos"),
    );

    final List data = json.decode(response.body);

    setState(() {
      todos = data.map((item) => Todo.fromJson(item)).toList();
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo App")),

      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: todos.length,

              itemBuilder: (context, index) {
                final todo = todos[index];

                return ListTile(
                  leading: Icon(
                    todo.completed ? Icons.check_circle : Icons.circle_outlined,
                  color: todo.completed ? Colors.green : Colors.grey, 
                  ),

                  title: Text(todo.title),
                );
              },
            ),
    );
  }
}
