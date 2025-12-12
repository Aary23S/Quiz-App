// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:quiz_app/answer_buttons.dart';
import 'package:quiz_app/questions_data.dart';

//QuestionsSection (widget): immutable configuration, constructor, identity
class QuestionsSection extends StatefulWidget 
{
  const QuestionsSection({super.key, required this.onSelectAnswer, required this.onQuizFinish, this.onUpdateAnswer});

  final void Function(String answer) onSelectAnswer;
  final void Function() onQuizFinish;
  final void Function(int index, String answer)? onUpdateAnswer;
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
    widget.onUpdateAnswer!(currentQuestionIdx, selectedAnswer);
    
    setState
    (
      () 
      {
        if(currentQuestionIdx < question.length - 1) 
        {
          currentQuestionIdx+=1;
        }  
        else
        {
          widget.onQuizFinish();
        }
      });
    
  }
  
  //function changing the state to go to previous question 
  //by decrementing the currentQuestionIdx by 1
  void goToPreviousQuestion(){
    setState(
      (){
        if(currentQuestionIdx>0){
          currentQuestionIdx-=1;
        }
      }
    );
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
        //widget to show the question number out of tot questions 
        // and the back button to go to previous question
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: 
          [
            IconButton
            (
              onPressed: currentQuestionIdx>0 ? goToPreviousQuestion : null, 
              icon: const Icon(Icons.arrow_back, color: Colors.white,),
            ),
            Text
            (
              'Question ${currentQuestionIdx + 1} of ${question.length}', 
              style: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,),
            ),
            const SizedBox(width: 48,), //to balance the space taken by the back button
          ],
        ),
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
                // calling the changeQuestion function when an answer button is pressed and 
                // passing the selected answer to it which is here named as answer contains 
                //the text of the answer button
                changeQuestion(answer);
              }
            ),
          );
        })
        
      ] 
    );
  }
}