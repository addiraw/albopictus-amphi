import 'package:flutter/material.dart';
var json = [

{
"userId": 1,
"id": 1,
"title": "delectus aut autem",
"completed": false
},
{
"userId": 1,
"id": 2,
"title": "quis ut nam facilis et officia qui",
"completed": false
},
{
"userId": 1,
"id": 3,
"title": "fugiat veniam minus",
"completed": false
} ];
// ... more todos

var a = {
"userId": 1,
"id": 1,
"title": "delectus aut autem",
"completed": false
};

// shared/lib/src/todo_model.dart
class Todo {
final int userId;
final int id;
final String title;
bool completed;
Todo(this.userId, this.id, this.title, this.completed);
factory Todo.fromJson(
Map<String, dynamic> json,
) {
return Todo(
json['userId'] as int,
json['id'] as int,
json['title'] as String,
json['completed'] as bool
);
}




}

class Json extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("${

Todo.fromJson(a)

      }"),
    );
  }
}