
import 'package:flutter/material.dart';
import 'gradieant_color.dart';
void main(){
  runApp
  (
    MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Scaffold 
      (
        appBar: AppBar
        (
          title: Text('Quiz App', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 69, 56, 18)),),
        ),
        body: Center
        (
          child: GradieantColor(),
        )      
      )
    )
  );
}

