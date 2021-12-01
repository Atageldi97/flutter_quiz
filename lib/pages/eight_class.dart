import 'package:flutter/material.dart';

class EightClass extends StatefulWidget {
  const EightClass({Key? key}) : super(key: key);

  @override
  _EightClassState createState() => _EightClassState();
}

class _EightClassState extends State<EightClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '8 Класс',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
