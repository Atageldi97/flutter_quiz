import 'package:flutter/material.dart';

class ElevenClass extends StatefulWidget {
  const ElevenClass({Key? key}) : super(key: key);

  @override
  _ElevenClassState createState() => _ElevenClassState();
}

class _ElevenClassState extends State<ElevenClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '11 Класс',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
