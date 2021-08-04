import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback function;
  final String answerText;

  Answer(this.answerText, this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: function,
        color: Colors.cyan[200],
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.all(10),
    );
  }
}
