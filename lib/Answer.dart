import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function(String) nextQuestion;
  String answer;

  Answer(this.nextQuestion, this.answer);

  @override
  Widget build(BuildContext context) {
    // String answerText = answer["asnwerText"];
    return Container(
      width: 500,
      alignment: Alignment.center,
      child: ElevatedButton(
        child: Text(
          answer,
          style: TextStyle(fontSize: 18),
        ),
        onPressed: () {
          nextQuestion(answer);
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(255, 100, 55, 1),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          alignment: Alignment.bottomLeft,
        ),
      ),
    );
  }
}
