import 'package:flutter/material.dart';

/*
void main() {
  runApp(MyApp());
}
*/

void main() =>
    runApp(MyApp()); // valid Dart syntax for Funtions with ONE expression!

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ctrl + 'space' for code suggestions
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Text('This is a default Text'),
      ),
    );
  }
}

// **Tabs**
// Video Timestamp: https://youtu.be/x0uinJvhNxI?t=9595
// Dartpad
// Flutter Repo auf GitHub
// Markdown Docomentation