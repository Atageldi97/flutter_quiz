import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onChangeAnswer;
  Answer({Key? key, required this.title, this.isCorrect, required this.onChangeAnswer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onChangeAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 50.0,
          vertical: 5.0,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10.0,
                offset: Offset(1.0, 1.0),
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            gradient: const LinearGradient(colors: [
              Color(0xffb9acf6),
              Color(0xff7c6492),
              Color(0xffa5bece),
            ])),
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontFamily: 'Georgia', fontSize: 20.0,color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
