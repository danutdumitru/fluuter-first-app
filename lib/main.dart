import 'package:complete_gui/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  setNewQuestion() {
    print(_questionIndex);
    setState(() {
      _questionIndex = (_questionIndex + 1) % 3;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'This is the first question!',
      'Another question',
      'The last question'
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My first app"),
            ),
            body: Column(children: [
              Question(
                questionText: questions.elementAt(_questionIndex),
              ),
              RaisedButton(
                child: Text("Answer 1"),
                onPressed: setNewQuestion,
              ),
              RaisedButton(
                child: Text("Answer 2"),
                onPressed: setNewQuestion,
              ),
            ])));
  }
}
