import 'package:flutter/material.dart';
import './answers.dart';

class Welcome extends StatelessWidget {
  final VoidCallback beginQuiz;
  Welcome(this.beginQuiz);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('Welcome to the best personality test!🤩',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 27,
                fontStyle: FontStyle.italic,
              )),
          padding: EdgeInsets.all(30),
        ),
        Answer('🚀 Begin test!', beginQuiz)
      ],
    );
  }
}
