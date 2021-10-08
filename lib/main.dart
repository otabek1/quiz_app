import 'package:flutter/material.dart';
import './Answer.dart';
import 'score.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int totalScore = 0;
  List<Map<String, dynamic>> questions = [
    {
      "questionText": "What is the biggest Planet?",
      "answers": {
        "correctAnswer": "Saturn",
        "answerText": ["Earth", "Mercury", "Pluto", "Saturn"]
      }
    },
    {
      "questionText": "What is the mass of the Sun?",
      "answers": {
        "correctAnswer": "1500 tons",
        "answerText": ["1.5 ton", "15 tons", "150 tons", "1500 tons"]
      }
    },
    {
      "questionText":
          "How long does it take for the Earth to rotate around its orbid",
      "answers": {
        "correctAnswer": "31 days",
        "answerText": ["31 days", "24 hours", "365 days", "100 years"]
      }
    }
  ];

  void nextQuestion(String answer) {
    setState(() {
      if (answer == questions[questionIndex]["answers"]['correctAnswer']) {
        totalScore += 1;
      }
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is title"),
        ),
        body: questionIndex < questions.length
            ? Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    width: double.infinity,
                    child: Text(
                      questions[questionIndex]["questionText"],
                      style: TextStyle(
                        fontSize: 22,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Answer(nextQuestion,
                      questions[questionIndex]["answers"]["answerText"][0]),
                  Answer(nextQuestion,
                      questions[questionIndex]["answers"]["answerText"][1]),
                  Answer(nextQuestion,
                      questions[questionIndex]["answers"]["answerText"][2]),
                  Answer(nextQuestion,
                      questions[questionIndex]["answers"]["answerText"][3]),
                  // Text("Total Score $totalScore"),
                ],
              )
            : Score(totalScore)
      ),
    );
  }
}
