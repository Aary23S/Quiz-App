import 'package:flutter/material.dart';
import 'logo_of_quiz.dart';
import 'questions_section.dart';

class Quiz extends StatefulWidget 
{
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> 
{
  late Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = LogoOfQuiz(switchScreen);
  }

  void switchScreen(){
    setState
    (
      () {
        activeScreen = const QuestionsSection();
      },
    );
  }
  @override
  Widget build(context) 
  {
    //returning MaterialApp widget because it is the root widget of the application
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Scaffold 
      (
        appBar: AppBar
        (
          title: Text('Quiz App', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 69, 56, 18)),),
        ),
        body: Center
        (
          child: activeScreen,
        )      
      )
    );
  }
}