// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'logo_of_quiz.dart';

class GradieantColor extends StatelessWidget 
{
  const GradieantColor({super.key});

  @override
  Widget build(BuildContext context) 
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
      child: Center
      (
        child: LogoOfQuiz(),  
      ),
    );
  }
}


