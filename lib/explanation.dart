import 'package:flutter/material.dart';
import './answers.dart';

class Explanation extends StatelessWidget {
  final String explanationText;
  final VoidCallback goBack;
  final String message;
  Explanation(this.explanationText, this.goBack, this.message);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        child: Text(
          explanationText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            //fontStyle: FontStyle.italic,
          ),
        ),
      ),
      Answer(message, goBack),
    ]);
  }
}
