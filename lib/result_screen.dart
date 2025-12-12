// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:quiz_app/questions_data.dart';
import 'package:quiz_app/question_summery.dart';
class ResultScreen extends StatelessWidget 
{
  const ResultScreen({super.key, required this.selectedAnswers, required this.onRestart});
  final List<String> selectedAnswers;
  
  final void Function() onRestart;
  List<Map<String, Object>> getSummaryData()
  {
    final List<Map<String, Object>> summary = [];
    for(int i=0; i<selectedAnswers.length; i++)
    {
      summary.add({
        'questionIndex': i,
        'question': question[i].questionText!,
        'userAnswer': selectedAnswers[i],
        'correctAnswer': question[i].answers![0],
        'isCorrect': selectedAnswers[i] == question[i].answers![0],
      });
    }
    return summary;
  }

  @override
  Widget build(context) 
  {
    return 
    SingleChildScrollView
    (
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        [
          const SizedBox(height: 20),
          
          Text
          (
            "You have completed the quiz!", 
            style: const TextStyle
            (
              fontSize: 24, 
              fontWeight: FontWeight.bold, 
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 30),
          QuestionSummery(summaryData: getSummaryData()), 
          
          const SizedBox(height: 30),
          ElevatedButton
          (
            onPressed: ()
            {
              //restart the quiz by switching back to the LogoOfQuiz screen
              //this can be done by calling a function passed from parent widget quiz.dart
              onRestart();
            }, 
            child: const Text
            (
              "Restart Quiz", 
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold, 
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
);
  }
}