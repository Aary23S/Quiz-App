import 'package:flutter/material.dart';
import 'logo_of_quiz.dart';
import 'questions_section.dart';
import 'result_screen.dart';
class Quiz extends StatefulWidget 
{
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> 
{
  List<String> selectedAnswers = [];
  
  //the answer is received from QuestionsSection widget when an answer button is pressed as selectedAnswer which is here named as answer
  //and then this answer is added to the selectedAnswers list
  void chooseAnswer(String answer)
  {
    selectedAnswers.add(answer);
  }

//defining a variable to hold the active screen widget
//initially it will hold the LogoOfQuiz widget
//when the switchScreen function is called it will hold the QuestionsSection widget
//and the UI will be updated accordingly
  late Widget? activeScreen;

//initializing the activeScreen variable in initState method
//this method is called only once when the stateful widget is inserted in the widget tree   

@override
void initState() 
{
  super.initState();
  activeScreen = LogoOfQuiz(switchScreen);
}

//function to switch screens
//this function is passed to LogoOfQuiz widget as a parameter
//when the Start Quiz button is pressed this function will be called
//this function is responsible for updating the activeScreen variable because of setState method
//whihc will rebuild the UI with the new activeScreen widget

void switchScreen()
{
  setState
  (
    () 
    {
      activeScreen = QuestionsSection(onSelectAnswer: chooseAnswer, onQuizFinish: goToResultScreen,);
    },
  );
}

void goToResultScreen(){
  setState
  (
    ()
    {
      activeScreen = ResultScreen(selectedAnswers: selectedAnswers, onRestart: restartQuiz,);
      
    }
  );
}

void restartQuiz(){
  setState
  (
    (){
      selectedAnswers = [];
      activeScreen = LogoOfQuiz(switchScreen);
    }
  );
}

  @override
  Widget build(context) 
  {
    //returning MaterialApp widget because it is the root widget of the application
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Scaffold 
      (
        appBar: AppBar
        (
          title: Text('Quiz App', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 69, 56, 18)),),
        ),
        //container is for the decoration and styiling purpose
        body: Container
        (
          decoration: const BoxDecoration
          (
            gradient: LinearGradient
            (
              colors: [Color.fromARGB(255, 16, 155, 255), Color.fromARGB(255, 34, 95, 251)],
              begin: FractionalOffset.centerLeft,
              end: FractionalOffset.centerRight,
            )
          ),
          //centering the child widget of container
          child: Center
          (
            child: activeScreen,
          )
        )      
      )
    );
  }
}