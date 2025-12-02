class QuizQuestions {
  QuizQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> shuffledAnswers() {
    //varíavel que retorna uma lista de respostas
    final shuffledList = List.of(answers);
    //Faz o embalhamento da lisya recebida pela variável
    shuffledList.shuffle();
    //retorna a lista embaralhada
    return shuffledList;
  }
}
