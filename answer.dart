import 'package:flutter/material.dart';
import 'question.dart';
import 'main.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final VoidCallback answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amber,
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
