class QuizQuestions {
  
  final String? questionText;
  final List<String>? answers;

  const QuizQuestions({this.questionText, this.answers});
  /*
    QuizQuestions({String? questionText, List<String>? answers}) 
    { this.questionText = questionText; this.answers = answers; }

  */


  List<String> getAnsShuffuled() {
    final shuffledList = List.of(answers!);
    shuffledList.shuffle();

    return shuffledList;
  }
}
