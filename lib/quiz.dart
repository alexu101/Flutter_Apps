import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function chooseFunction;
  Quiz(this.questions, this.questionIndex, this.chooseFunction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...questions[questionIndex]['answers'].map((answer) {
          return Answer(answer['text'], () => chooseFunction(answer['score']));
        }).toList(),
      ],
    );
  }
}
