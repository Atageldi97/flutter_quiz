import 'package:flutter/material.dart';

class SixClassPage extends StatefulWidget {
  const SixClassPage({Key? key}) : super(key: key);

  @override
  _SixClassPageState createState() => _SixClassPageState();
}

class _SixClassPageState extends State<SixClassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '6 Класс',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
