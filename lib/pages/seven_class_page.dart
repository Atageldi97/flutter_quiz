import 'package:flutter/material.dart';

class SevenClass extends StatefulWidget {
  const SevenClass({Key? key}) : super(key: key);

  @override
  _SevenClassState createState() => _SevenClassState();
}

class _SevenClassState extends State<SevenClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '7 Класс',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
