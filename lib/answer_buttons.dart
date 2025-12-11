// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AnswerButtons extends StatelessWidget 
{
  const AnswerButtons({super.key,required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;
  
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

        onPressed: onTap, 
        child: Text
        (
        answerText, 
        style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),
        
        ),
      
      ),
    );
  }

}