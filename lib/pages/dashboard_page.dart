import 'package:first_quiz/pages/eight_class.dart';
import 'package:first_quiz/pages/eleven_class.dart';
import 'package:first_quiz/pages/home_page.dart';
import 'package:first_quiz/pages/nine_class.dart';
import 'package:first_quiz/pages/seven_class_page.dart';
import 'package:first_quiz/pages/six_class_page.dart';
import 'package:first_quiz/pages/ten_class.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FirstRow(),
                SecondRow(),
                ThirdRow(),
                ElevenRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ElevenRow extends StatelessWidget {
  const ElevenRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => ElevenClass()));
      },
      child: Container(
        alignment: Alignment.center,
        height: 150,
        width: 150,
        child: const Text(
          '11 Класс',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          gradient: LinearGradient(
            colors: [Colors.green, Colors.yellowAccent, Colors.orange],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}

class ThirdRow extends StatelessWidget {
  const ThirdRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => NineClass()));
          },
          child: Container(
            alignment: Alignment.center,
            height: 150,
            width: 150,
            child: const Text(
              '9 Класс',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [Colors.green, Colors.yellowAccent, Colors.orange],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => TenClass()));
          },
          child: Container(
            alignment: Alignment.center,
            height: 150,
            width: 150,
            child: const Text(
              '10 Класс',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [Colors.green, Colors.yellowAccent, Colors.orange],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SecondRow extends StatelessWidget {
  const SecondRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => SevenClass()));
          },
          child: Container(
            alignment: Alignment.center,
            height: 150,
            width: 150,
            child: const Text(
              '7 Класс',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [Colors.green, Colors.yellowAccent, Colors.orange],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => EightClass()));
          },
          child: Container(
            alignment: Alignment.center,
            height: 150,
            width: 150,
            child: const Text(
              '8 Класс',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [Colors.green, Colors.yellowAccent, Colors.orange],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FirstRow extends StatelessWidget {
  const FirstRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => HomePage()));
          },
          child: Container(
            alignment: Alignment.center,
            height: 150,
            width: 150,
            child: const Text(
              '5 Класс',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [Colors.green, Colors.yellowAccent, Colors.orange],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => SixClassPage()));
          },
          child: Container(
            alignment: Alignment.center,
            height: 150,
            width: 150,
            child: const Text(
              '6 Класс',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [Colors.green, Colors.yellowAccent, Colors.orange],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Bir extends StatelessWidget {
  const Bir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
