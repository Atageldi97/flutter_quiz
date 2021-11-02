import 'package:first_quiz/const/constants.dart';
import 'package:first_quiz/models/quations.dart';
import 'package:first_quiz/widgets/answer.dart';
import 'package:first_quiz/widgets/progress_bar.dart';
import 'package:first_quiz/widgets/quiz.dart';
import 'package:first_quiz/widgets/result.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() {
    setState(() {
      _questionIndex = 0;
      _countResult = 0;
      _icons = [];
    });
  }

  void _onChangeAnswer(bool isCorrect) {
    setState(() {
      if (isCorrect) {
        _icons.add(
          const Icon(Icons.brightness_1, color: Colors.green),
        );
        _countResult++;
      } else {
        _icons.add(
          const Icon(Icons.brightness_1, color: Colors.red),
        );
      }
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Quiz App',
          style: TextStyle(
              color: Colors.black, fontFamily: 'Georgia', fontSize: 22.0),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProgressBar(
                icons: _icons,
                count: _questionIndex,
                total: data.questions.length,
              ),
              _questionIndex < data.questions.length
              ? Quiz(
                index: _questionIndex,
                questionData: data,
                onChangeAnswer: _onChangeAnswer,
              ): Result(count: _countResult, total: data.questions.length, onClearState: _clearState),


            ],
          ),
        ),
      ),
    );
  }
}
