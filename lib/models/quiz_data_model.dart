class QuizModel {
  String? questions;
  List<AnswerModel>? answer;

  QuizModel({
    required this.questions,
    required this.answer,
  });

  factory QuizModel.fromJson(Map<String, Object?> json) => QuizModel(
        questions: json["question"] as String?,
        answer: (json["answer"] as List)
            .map((e) => AnswerModel.fromJson(e))
            .toList(),
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuizModel &&
          runtimeType == other.runtimeType &&
          questions == other.questions &&
          answer == other.answer;

  @override
  int get hashCode => questions.hashCode ^ answer.hashCode;

  @override
  String toString() {
    return 'QuizModel{questions: $questions, answer: $answer}';
  }
}

class AnswerModel {
  String? answer;
  bool check;

  AnswerModel({required this.answer, required this.check});

  factory AnswerModel.fromJson(Map<String, Object?> json) =>
      AnswerModel(answer: json["ans"] as String?, check: json["check"] as bool);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnswerModel &&
          runtimeType == other.runtimeType &&
          answer == other.answer &&
          check == other.check;

  @override
  int get hashCode => answer.hashCode ^ check.hashCode;

  @override
  String toString() {
    return 'AnswerModel{answer: $answer, check: $check}';
  }
}

class QModel {
  List<QuizModel> list;

  QModel({required this.list});

  factory QModel.fromJson(Map<String, Object?> json) => QModel(
        list: (json["list"] as List?)
                ?.map((e) => QuizModel.fromJson(e))
                .toList() ??
            [],
      );
}
