import 'package:flutter/cupertino.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({required this.title, required this.answers});
}

class QuestionData {
  final _data = [
    Question(
      title: 'Как называют жесткий компьютерный диск?',
      answers: [
        {'answer': 'Винчестер называют жесткий компьютерный диск', 'isCorrect': 1},
        {'answer': 'Стек называют жесткий компьютерный диск', },
        {'answer': 'Процессор называют жесткий компьютерный диск', },
        {'answer': 'Корпус называют жесткий компьютерный диск', }
      ]
    ),
    Question(
        title: 'Временная память в компьютере?',
        answers: [
          {'answer': 'Винчестер временная память в компьютере', },
          {'answer': 'Стек временная память в компьютере','isCorrect': 1 },
          {'answer': 'SSD временная память в компьютере', },
          {'answer': 'BIOS временная память в компьютере', }
        ]
    ),
    Question(
        title: 'Элемент процессора, ячейка памяти для хранения обрабатываемых данных (комп.)?',
        answers: [
          {'answer': 'Винчестер',},
          {'answer': 'Стек', },
          {'answer': 'процессор', },
          {'answer': 'регистр','isCorrect': 1 }
        ]
    ),
    Question(
        title: 'Какой объем информации влезает на 3,5 дюймовую дискету?',
        answers: [
          {'answer': '1.44 Мегабайта', 'isCorrect': 1},
          {'answer': '1 Мегабайта', },
          {'answer': '0.44 Кбайта', },
          {'answer': '44 Гбайта', }
        ]
    ),
    Question(
        title: 'Когда появился первый компьютер?',
        answers: [
          {'answer': 'В 1938 году', 'isCorrect': 1},
          {'answer': 'В 1958 году', },
          {'answer': 'В 1974 году', },
          {'answer': 'В 1983 году', }
        ]
    ),
    Question(
        title: 'Что обозначает акроним CPU (англ.) в информатике?',
        answers: [
          {'answer': 'Глобальная компьютерная сеть',},
          {'answer': 'Локальная вычислительная сеть', },
          {'answer': 'модулятор и демодулятор', },
          {'answer': 'Центральное процессорное устройство', 'isCorrect': 1 }
        ]
    ),
  ];
  List<Question> get questions => [..._data];
}
