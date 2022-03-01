import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionsText': 'What\'s you favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionsText': 'What\'s you favourite animal?',
        'answers': ['Tiger', 'Lion', 'Elephant', 'Horse'],
      },
      {
        'questionsText': 'What\'s you favourite watch?',
        'answers': ['Rolex', 'Navy', 'MI', 'Huawei'],
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('New_Learning'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionsText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer.toString);
            }).toList()
          ],
        ),
      ),
    );
  }
}
