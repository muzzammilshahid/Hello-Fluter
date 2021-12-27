import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function() answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  const Quiz(this.answerQuestion, this.questions, this.questionIndex,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        })
      ],
    );
  }
}
