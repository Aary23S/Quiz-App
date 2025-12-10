// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class QuestionsSection extends StatefulWidget 
{
  const QuestionsSection({super.key});

  @override
  State<QuestionsSection> createState() => _QuestionsSectionState();
}

class _QuestionsSectionState extends State<QuestionsSection> 
{
  
  @override
  Widget build(context) 
  {
    return Container
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
    ); //returning Container widget with gradient background
  }
}