import 'package:flutter/material.dart';

class NineClass extends StatefulWidget {
  const NineClass({Key? key}) : super(key: key);

  @override
  _NineClassState createState() => _NineClassState();
}

class _NineClassState extends State<NineClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '9 Класс',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
