class Quiz {
  late String subject;
  late List<MCQs> questions;
  Quiz({required this.subject, required this.questions});
}

class MCQs {
  late String qText;
  bool? isCorrect;
  late String option1, option2, option3, option4, correctAns;
  String? selected = "";
  MCQs(
      {required this.qText,
      required this.option1,
      required this.option2,
      required this.option3,
      required this.option4,
      this.selected,
      required this.correctAns});
}
