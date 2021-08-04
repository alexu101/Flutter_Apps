import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 27,
          //fontStyle: FontStyle.italic,
        ),
      ),
      padding: EdgeInsets.only(top: 15, bottom: 20, left: 5, right: 5),
      alignment: Alignment.center,
    );
  }
}
