import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import './result.dart';

/*
void main() {
  runApp(MyApp());
}
*/

void main() => runApp(
    const MyApp()); // valid Dart syntax for Funtions with ONE expression!

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Lion', 'score': 0},
      ],
    },
    {
      'questionText': 'How is your favorite Instructor?',
      'answers': [
        {'text': 'Max', 'score': 0},
        {'text': 'Maximilian', 'score': 0},
        {'text': 'Academind', 'score': 0},
        {'text': 'Schwarzmüller', 'score': 0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    // rebuilds widget tree; resets everything
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    }
    // ignore: avoid_print
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // questions = []; this does not work if questions is const

    return MaterialApp(
      // ctrl + 'space' for code suggestions
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: _questionIndex <
                _questions
                    .length // ternary expression '_quesitonIndex < _question.length ? Quiz() : Result()'
            ? Quiz(
                answerQuestions: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                _totalScore,
                _resetQuiz,
              ),
      ),
    );
  }
}

// **Important Tabs**
// Video Timestamp: https://youtu.be/x0uinJvhNxI?t
// Dartpad: https://dartpad.dev/?
// GitHub: https://github.com/vnillaDev/learning-flutter
// Markdown Docomentation
