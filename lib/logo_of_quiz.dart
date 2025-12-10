import 'package:flutter/material.dart';
// import 'questions_section.dart';

class LogoOfQuiz extends StatelessWidget 
{
  //constructor accepting a function to switch screens 
  //from logo to questions section of the quiz app
  const LogoOfQuiz(this.startQuiz, {super.key});

  //function to switch screens 
  // passed from parent widget
  //startQuiz is same as the switchScreen function in quiz.dart
  final void Function() startQuiz;

  @override
  Widget build(context) 
  {
    return Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children: 
      [
        //this conainer is used to show the image of quiz logo
        Image.asset('assets/images/quiz-logo.png', width: 300, height: 300, color: const Color.fromARGB(150, 255, 255, 254),),
        const SizedBox(height: 30,),
        const Text("Welcome to the Quiz App", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white,),),
        const SizedBox(height: 20,),
        
        const Text("Test your knowledge with our exciting quiz app! Challenge yourself with a variety of questions and see how much you know.", 
        textAlign: TextAlign.center,  
        style: TextStyle(fontSize: 16, color: Colors.white70,),),
        const SizedBox(height: 40,),
        
        TextButton
        (
          style: TextButton.styleFrom
          (
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          onPressed: startQuiz,
          child: const Text("Start Quiz", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue,),),
        )
      ],
    );
  }
}