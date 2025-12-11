// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:quiz_app/answer_buttons.dart';
import 'package:quiz_app/questions_data.dart';
class QuestionsSection extends StatefulWidget 
{
  const QuestionsSection({super.key});

  @override
  State<QuestionsSection> createState() => _QuestionsSectionState();
}

class _QuestionsSectionState extends State<QuestionsSection> 
{  
  int currentQuestionIdx = 0;
  void changeQuestion()
  {  
    setState(() {
      if(currentQuestionIdx < question.length - 1) {
        currentQuestionIdx+=1;
      }  
      else{
        currentQuestionIdx = 0;
      }
    });
    
  }
  
  
  @override
  Widget build(context) 
  {
    final currentQuestion = question[currentQuestionIdx];
    
    return Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Text(currentQuestion.questionText!, style: 
        TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white,),textAlign: TextAlign.center,),
        SizedBox(height: 20,),

        ...currentQuestion.getAnsShuffuled().map((answer) 
        {
          return Padding
          (
            padding: const EdgeInsets.symmetric(vertical: 8),
            
            child: AnswerButtons(answerText: answer, onTap: changeQuestion),
          );
        })
        
      ] 
    );
  }
}