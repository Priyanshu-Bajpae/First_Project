class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); // 'of' creates copy of old list,
    shuffledList.shuffle(); // here suffling on copied list
    return shuffledList;

    ///final means not reassigning values
  }
}
