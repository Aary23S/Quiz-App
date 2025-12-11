// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:quiz_app/questions_data.dart';

class ResultScreen extends StatelessWidget 
{
  const ResultScreen({super.key, required this.selectedAnswers});
  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];
    for(int i=0; i<selectedAnswers.length; i++){
      summary.add({
        'question_index': i,
        'question': ?question[i].questionText,
        'selected_answer': selectedAnswers[i],
        'correct_answer': ?question[i].answers?[0],
      });
    }
    return summary;
  }

  @override
  Widget build(context) 
  {
    return Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children: 
      [
        Center
        (
          child: Text("You have completed the quiz!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white,),),
        ),
        SizedBox(height: 20,),
        ElevatedButton
        (
          onPressed: (){
            //restart the quiz by switching back to the LogoOfQuiz screen
            //this can be done by calling a function passed from parent widget quiz.dart
            
          }, 
          child: const Text
          (
            "Restart Quiz", 
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue,),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}