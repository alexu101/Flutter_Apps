import 'package:flutter/material.dart';
import './answers.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetFunction;
  final VoidCallback goToExplanation;
  Result(this.totalScore, this.resetFunction, this.goToExplanation);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 15, bottom: 20),
              child: Text('Congratulations ! Your score is $totalScore',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ))),
          Answer('Reset Quiz 🔃', resetFunction),
          Answer('Score explanation ❓', goToExplanation),
        ],
      ),
      padding: EdgeInsets.only(top: 15, bottom: 20),
    );
  }
}
