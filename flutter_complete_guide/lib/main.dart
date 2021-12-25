import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s favorite food?',
    ];

    return MaterialApp(
      // ctrl + 'space' for code suggestions
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer(
                _answerQuestions), // forwarding a pointer to the function _answerQuesitons
            Answer(_answerQuestions),
            Answer(_answerQuestions),
          ],
        ),
      ),
    );
  }
}

// **Tabs**
// Video Timestamp: https://youtu.be/x0uinJvhNxI?t=13116
// Dartpad
// Flutter Repo auf GitHub
// Markdown Docomentation
