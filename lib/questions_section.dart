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
        body: Center
        (
          child: Text("This is the Questions Section", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
        )   ,
    );
  }
}