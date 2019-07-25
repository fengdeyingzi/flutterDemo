/**
 * 第二页面测试
 */
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第二个页面'),
        backgroundColor: Colors.brown,
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text('返回'),
        ),
      ),
    );
  }
}







class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

void main() {
  runApp(new MaterialApp(
    title: '传递数据',
    home: new TodosScreen(
      todos: new List.generate(
        20,
            (i) => new Todo(
          '我是表头 ${i} 项',
          '我是内容 $i',
        ),
      ),
    ),

  ));
}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

  TodosScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第一个页面'),
      ),
      body: new ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text(todos[index].title),
            subtitle:new Text(todos[index].description) ,
            // When a user taps on the ListTile, navigate to the DetailScreen.
            // Notice that we're not only creating a new DetailScreen, we're
            // also passing the current todo through to it!
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // Declare a field that holds the Todo
  final Todo todo;

  // In the constructor, require a Todo
  DetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("${todo.title}"),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(16.0),
        child: new Text('${todo.description}'),
      ),
    );
  }
}
