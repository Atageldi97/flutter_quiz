import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final onClearState;

  const Result(
      {Key? key, required this.count, required this.total, this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (0 <= count && count <= 3) {
      msg = 'Темная сторона\n не для тебя, дружок.';
      img = Image.asset('assets/images/bad.png');
    } else if ((4 <= count && count <= 7)) {
      msg = 'Совсем чуть-чуть до цели';
      img = Image.asset('assets/images/norm.png');
    } else {
      msg = 'Поздравляю, ты справился';
      img = Image.asset('assets/images/good.png');
    }
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 15,
              spreadRadius: 0.0,
              offset: Offset(2.0, 5.0),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(colors: [
            Color(0xffb9acf6),
            Color(0xff7c6492),
            Color(0xffa5bece),
          ])),
      child: Column(
        children: [
          SizedBox(
            height: 120,
            width: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Text(
            msg,
            textAlign: TextAlign.center,
          ),
          const Divider(
            color: Colors.white,
          ),
          Text(
            'Верно ответили на $count из $total',
            style:
                TextStyle(fontFamily: 'Georgia', fontWeight: FontWeight.w800, fontSize: 15),
          ),
          const Divider(
            color: Colors.white,
          ),
          FlatButton(
            child: const Text('Пройти еще раз', style:
            TextStyle(fontFamily: 'Georgia', fontWeight: FontWeight.w800, fontSize: 18),),
            onPressed: onClearState,
            color: Color(0xffb9acf6),
          )
        ],
      ),
    );
  }
}
