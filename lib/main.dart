import 'package:flutter/material.dart';
import 'package:hello_flutter/answer.dart';
import 'package:hello_flutter/question.dart';
import 'package:hello_flutter/quiz.dart';
import 'package:hello_flutter/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'question': "What's your favorite color",
        'answers': ['Red', 'Green', 'Blue', 'Yellow']
      },
      {
        'question': "What's your favorite animal",
        'answers': ['dog', 'cat', 'rabbit']
      },
      {
        'question': "What's your favorite color",
        'answers': ['Red', 'Green', 'Blue', 'Yellow']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _answerQuestion,
                _questions,
                _questionIndex,
              )
            : const Result(),
      ),
    );
  }
}
