import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final index;
  final questionData;
  final onChangeAnswer;

  const Quiz({Key? key, this.index, this.questionData, this.onChangeAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            questionData.questions[index].title,
            style: TextStyle(fontFamily: 'Georgia', fontSize: 22.0),
          ),
        ),
        ...questionData.questions[index].answers
            .map(
              (value) => Answer(
            title: value['answer'],
            onChangeAnswer: onChangeAnswer,
            isCorrect: value.containsKey('isCorrect') ? true : false,
          ),
        ).toList(),
      ],
    );
  }
}
