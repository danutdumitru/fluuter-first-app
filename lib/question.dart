import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      width: double.maxFinite,
    );
  }
}
