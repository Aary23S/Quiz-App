import 'package:flutter/material.dart';
import 'questions_section.dart';

class LogoOfQuiz extends StatelessWidget 
{
  const LogoOfQuiz({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      children: 
      [
        //this conainer is used to show the image of quiz logo
        Container
        (
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 50),
          child: Image.asset('assets/images/quiz-logo.png', width: 300, height: 300,),
        
        ),
        SizedBox(height: 30,),
        const Text("Welcome to the Quiz App", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white,),),
        SizedBox(height: 20,),
        const Text("Test your knowledge with our exciting quiz app! Challenge yourself with a variety of questions and see how much you know.", 
        textAlign: TextAlign.center,  
        style: TextStyle(fontSize: 16, color: Colors.white70,),),
        SizedBox(height: 40,),
        TextButton
        (
          style: TextButton.styleFrom
          (
            backgroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          onPressed: () 
          {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuestionsSection()));
          },
          child: const Text("Start Quiz", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue,),),
        )
      ],
    );
  }
}

