import 'dart:convert';

import 'package:flutter/material.dart';

import '../data/quiz_data.dart';
import '../models/quiz_data_model.dart';

class ProviderLevel extends ChangeNotifier {
  QModel _model = QModel.fromJson(jsonDecode(jsonData));
  List currentLevel = [];
  int n = 0;
  int score = 0;

  void elementaryLevel() {
    currentLevel = _model.elementary;
    notifyListeners();
  }

  void preInterLevel() {
    currentLevel = _model.pre_intermediate;
    notifyListeners();
  }

  void interLevel() {
    currentLevel = _model.intermediate;
    notifyListeners();
  }

  void answerQuestion(bool check) {
    n++;
    if (check) score++;

    notifyListeners();
  }

  void clear() {
    n = 0; // Savollar sonini nolga qaytarish
    score = 0; // Natijalarni nolga qaytarish
    elementaryLevel(); // Testni boshlash
    notifyListeners();
  }

}
