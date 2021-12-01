import 'package:flutter/material.dart';

class TenClass extends StatefulWidget {
  const TenClass({Key? key}) : super(key: key);

  @override
  _TenClassState createState() => _TenClassState();
}

class _TenClassState extends State<TenClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '10 Класс',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
