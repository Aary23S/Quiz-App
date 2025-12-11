import 'package:quiz_app/model/question_model.dart';

const question =
[
  //when the index=0 this constructer will be called and parameters will be passed to it
  //creating objects of QuizQuestions class
  QuizQuestions
  (
    questionText: "What is the capital of France?",
    answers: ["Paris","Berlin", "Madrid",  "Rome"],
  ),
  QuizQuestions
  (
    questionText: "Which planet is known as the Red Planet?",
    answers: ["Mars","Earth",  "Jupiter", "Saturn"],
  ),
  QuizQuestions
  (
    questionText: "What is the largest ocean on Earth?",
    answers: ["Pacific Ocean","Atlantic Ocean", "Indian Ocean", "Arctic Ocean"],
  ),

  QuizQuestions
  (
    questionText: "What is the chemical symbol for gold?",
    answers: ["Au", "Ag", "Fe", "Pb"],
  ),
  QuizQuestions
  (
    questionText: "Who painted the Mona Lisa?",
    answers: ["Leonardo da Vinci","Vincent van Gogh", "Pablo Picasso",  "Claude Monet"],
  ),
];