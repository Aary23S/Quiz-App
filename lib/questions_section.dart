// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class QuestionsSection extends StatefulWidget 
{
  const QuestionsSection({super.key});

  @override
  State<QuestionsSection> createState() => _QuestionsSectionState();
}

class _QuestionsSectionState extends State<QuestionsSection> 
{
  
  @override
  Widget build(context) 
  {
    return Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Text("Question 1", style: 
        TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white,),),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){}, child: Text("Answer 1")),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){}, child: Text("Answer 2")), 
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){}, child: Text("Answer 3")),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){}, child: Text("Answer 4")),
      ] 
    );
  }
}