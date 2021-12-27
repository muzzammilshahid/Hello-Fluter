import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answer;

  const Answer(this.selectHandler, this.answer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answer),
        style:
            ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
      ),
    );
  }
}
