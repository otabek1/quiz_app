import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  int score;
  Score(this.score);

  var texts = [
    "Oh, You have not studied at all ",
    "Not bad, but should be improved",
    "Pretty good, Keep up the good work",
    "Great, You are master now"
  ];
  var text;

  @override
  Widget build(BuildContext context) {
    switch (score) {
      case 0:
        text = texts[0];
        break;
      case 1:
        text = texts[1];
        break;
      case 2:
        text = texts[2];
        break;
      case 3:
        text = texts[3];
        break;

      default:
        text = "Something went wrong";
    }
    return Container(
      alignment: Alignment.center,
      child: Text(
        "$text \n Your score is: $score",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 32),
      ),
    );
  }
}
