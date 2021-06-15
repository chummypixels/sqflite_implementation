import 'package:flutter/material.dart';
import 'package:sqflite_sample/todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textController = TextEditingController();
  List<Todo> taskList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listify'),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Enter a task'),
                controller: textController,
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: null,
            ),
            SizedBox(height: 20),
            Expanded(child: Container(
              child: taskList.isEmpty ? Container() : ListView.builder(itemBuilder: (ctx, index){
                if(index == taskList.length)
                  return null;
                return ListTile(title: ,)
              }),
            ))
          ],

        ),

      ),

    );

  }
}
