import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';
import './result.dart';
import './quiz.dart';
import './welcome.dart';
import './explanation.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int totalScore = 0;
  int questionIndex = -1;

  void resetQuiz() {
    setState(() {
      questionIndex = -1;
      totalScore = 0;
    });
  }

  bool explanationsPage = false;
  void goToExplanations() {
    setState(() {
      explanationsPage = true;
    });
  }

  void hitBegin() {
    setState(() {
      questionIndex++;
    });
  }

  void chooseFunction(int score) {
    totalScore += score;
    print(score);
    setState(() {
      questionIndex++;
    });
  }

  List questions = [
    {
      'questionText': '🤗 I have a kind word for everyone. 🤗',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '🏃‍♀️ I am always prepared. 🏃‍♀️',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '👨‍👧‍👧 I feel comfortable around people. 👨‍👧‍👧',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '🎭 I believe in the important of art. 🎭',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '🙈 I avoid taking a lot of responsability. 🙈',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText':
          '😓 There are many things that I don\'t like about myself. 😓',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '👨‍👧‍👧 I make friends easily. 👨‍👧‍👧',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '👨‍👧‍👧 I accept people the way they are. 👨‍👧‍👧',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '💃 I am the life of the party. 💃',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '🤯 My moods change easily. 🤯',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '🧠 I have a vivid imagination. 🧠',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '🧾 I make plans and stick to them. 🧾',
      'answers': [
        {'text': '👎 Strongly disagree', 'score': 10},
        {'text': '🙁 Slightly disagree', 'score': 20},
        {'text': '😐 Neutral or cannot decide', 'score': 30},
        {'text': '🙂 Slightly agree', 'score': 40},
        {'text': '👍 Strongly agree', 'score': 50},
      ],
    },
  ];

  String yourResult(int score) {
    List explanationTexts = [
      '😎You are awesome!',
      '🤗You are nice!',
      '😐You are ok!'
    ];
    if (score > 400)
      return explanationTexts[0];
    else if (score > 240)
      return explanationTexts[1];
    else
      return explanationTexts[2];
  }

  void goBack() {
    setState(() {
      explanationsPage = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.cyan.shade50,
          appBar: AppBar(
            title: Container(
              child: Text(
                'Personality test💻',
              ),
              alignment: Alignment.center,
            ),
            backgroundColor: Colors.cyan,
          ),
          body: (explanationsPage == false)
              ? ((questionIndex == -1)
                  ? Welcome(hitBegin)
                  : ((questionIndex < questions.length)
                      ? Quiz(questions, questionIndex, chooseFunction)
                      : Result(totalScore, resetQuiz, goToExplanations)))
              : Explanation(yourResult(totalScore), goBack, 'Back🔙')),
    );
  }
}
