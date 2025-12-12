import 'package:flutter/material.dart';

class QuestionSummery extends StatelessWidget 
{
  const QuestionSummery({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) 
  {
    return SizedBox
    (
      height: 300,
      child: SingleChildScrollView
      (
        child: Column
        (
          children: summaryData.map( (data) 
          {
            return Row
            ( children: 
              [
                CircleAvatar
                (
                  backgroundColor: data['isCorrect'] as bool
                      ? Colors.green
                      : Colors.red,
                  child: Text
                  (
                    ((data['questionIndex'] as int) + 1).toString(),
                  ),
                ),
                const SizedBox(width: 20),
                // expanded helps to take the remaining space in the row/column
                Expanded
                (
                  child: Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                    [
                      Text
                      (
                        data['question'] as String,
                        style: const TextStyle
                        (
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      
                      Text
                      (
                        'Your answer: ${data['userAnswer']}',
                        style: const TextStyle(color: Colors.red),
                      ),
                      Text
                      (
                        'Correct answer: ${data['correctAnswer']}',
                        style: const TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },).toList(),
        ),
      ),
    );
  }
}