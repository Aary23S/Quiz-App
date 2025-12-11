// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:quiz_app/answer_buttons.dart';
import 'package:quiz_app/questions_data.dart';

//QuestionsSection (widget): immutable configuration, constructor, identity
class QuestionsSection extends StatefulWidget 
{
  const QuestionsSection({super.key, required this.onSelectAnswer, required this.onQuizFinish});

  final void Function(String answer) onSelectAnswer;
  final void Function() onQuizFinish;
  @override
  State<QuestionsSection> createState() => _QuestionsSectionState();
}


//_QuestionsSectionState (state): mutable fields, event handlers (changeQuestion()), 
//UI building (build()), and lifecycle management.
class _QuestionsSectionState extends State<QuestionsSection> 
{  
  int currentQuestionIdx = 0;

  void changeQuestion(String selectedAnswer)
  {  
    //calling the onSelectAnswer function passed from parent widget quiz.dart
    //to add the selected answer to the selectedAnswers list in quiz.dart
    //selectedAnswer is the answer selected by the user
    widget.onSelectAnswer(selectedAnswer);
    
    setState(() {
      if(currentQuestionIdx < question.length - 1) {
        currentQuestionIdx+=1;
      }  
      else{
        widget.onQuizFinish();
      }
    });
    
  }
  
  
  @override
  Widget build(context) 
  {
    //currentQuestion will hold the object of QuizQuestions class containing the questionText and answers
    final currentQuestion = question[currentQuestionIdx];
    
    return Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        //displaying the question text
        Text(currentQuestion.questionText!, style: 
        TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white,),textAlign: TextAlign.center,),
        SizedBox(height: 20,),

        //mapping through the answers list and creating AnswerButtons for each answer
        ...currentQuestion.getAnsShuffuled().map( (answer) 
        {
          return Padding
          (
            padding: const EdgeInsets.symmetric(vertical: 8),
            
            child: AnswerButtons
            (
              answerText: answer, 
              onTap: () 
              {
                // widget.onSelectAnswer(answer);
                changeQuestion(answer);
              }
            ),
          );
        })
        
      ] 
    );
  }
}