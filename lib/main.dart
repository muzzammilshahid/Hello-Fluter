import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color",
      "What's your favorite animal",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Column(
          children: const [
            Text("The question!"),
            ElevatedButton(onPressed: null, child: Text("Answer 1")),
            ElevatedButton(onPressed: null, child: Text("Answer 2")),
            ElevatedButton(onPressed: null, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
