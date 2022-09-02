import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:helloworld/todo.dart';
import 'package:helloworld/post.dart';
import 'package:helloworld/drugModel.dart';
import 'package:helloworld/api.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListApp(),
    );
  }
}

class TodoListApp extends StatefulWidget {
  @override
  _TodoListAppState createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  List<Post> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, position) {
          return ListTile(title: Text(list[position].title!));
        },
      ),
    );
  }

  getPosts() {
    PostApi.getPosts().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        this.list = list.map((model) => Post.fromJson(model)).toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    // getTodos();
    getPosts();
  }
}
