// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AnswerButtons extends StatelessWidget 
{
  final String answerText;
  final void Function() onTap;
  //answerText and onTap are required parameters. answerText holds the text of the answer button
  //onTap holds the function to be executed when the button is pressed which are passed from parent widget 
  //from questions_section.dart which is changeQuestion function 
  const AnswerButtons({super.key,required this.answerText, required this.onTap});
  
  @override
  Widget build(context) 
  {
    return SizedBox
    (
      width: 250,
      child: ElevatedButton
      ( 
        style: ElevatedButton.styleFrom
        (
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          
        ),
        //onPressed will execute the function passed from parent widget which is changeQuestion function 
        //which increments the currentQuestionIdx to show the next question 
        onPressed: onTap, 
        //displaying the answer text on the button passed from parent widget named as answerText from questions_section.dart
        //which holds the text of the answer button. This is just the UI part of the answer button
        child: Text
        (
        answerText, 
        style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),
        
        ),
      
      ),
    );
  }

}