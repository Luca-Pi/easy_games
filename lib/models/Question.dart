class Question {
  final String questionTitle;
  final List<String> answers;
  final String correctAnswer;
  final QuestionType type;
  final int score;
  final String illustration;

  const Question({
    this.questionTitle,
    this.answers,
    this.correctAnswer,
    this.type,
    this.score,
    this.illustration,
  });
}

enum QuestionType {
  text,
  image
}