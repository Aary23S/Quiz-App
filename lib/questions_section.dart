// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class QuestionsSection extends StatelessWidget 
{
  const QuestionsSection({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Quiz App', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 69, 56, 18)),),
      ),
      body: Container
      (
        decoration: BoxDecoration
        (
          gradient: LinearGradient
          (
            colors: [const Color.fromARGB(255, 16, 155, 255), const Color.fromARGB(255, 34, 95, 251)],
            begin: FractionalOffset.centerLeft,
            end: FractionalOffset.centerRight,
          )
        ),
      )
    );
  }
}