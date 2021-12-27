import 'package:flutter/material.dart';
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
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'question': "What's your favorite color",
        'answers': [
          {
            'text': 'Red',
            'score': 4,
          },
          {
            'text': 'Green',
            'score': 3,
          },
          {
            'text': 'Blue',
            'score': 5,
          },
          {
            'text': 'Yellow',
            'score': 7,
          },
        ]
      },
      {
        'question': "What's your favorite animal",
        'answers': [
          {
            'text': 'dog',
            'score': 3,
          },
          {
            'text': 'cat',
            'score': 1,
          },
          {
            'text': 'rabbit',
            'score': 6,
          },
        ]
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
