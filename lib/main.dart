import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/dashboard_page.dart';

void main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(primaryColor: Colors.green),
      home: DashboardPage(),
    );
  }
}
