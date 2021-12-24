import 'package:flutter/material.dart';

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
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestions() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
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
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              child: const Text('Answer 1'),
              onPressed: answerQuestions, // passing a Pointer to onPressed
            ),
            ElevatedButton(
              child: const Text('Answer 2'),
              onPressed: () =>
                  print('answer 2 chosen!'), // single-line anonymous functions
            ),
            ElevatedButton(
              child: const Text('Answer 3'),
              onPressed: () {
                // anonymous function with more than one line
                print('answer 3 chosen!');
              },
            ),
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
