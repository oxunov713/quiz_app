import 'dart:convert';

import 'package:flutter/material.dart';

import '../../data/quiz_data.dart';
import '../../models/quiz_data_model.dart';
import '../../styles/app_color.dart';
import '../result/result.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int n = 0;
  int score = 0;

  QModel model = QModel.fromJson(jsonDecode(jsondata));

  void answerquestion(bool check) {
    setState(() {
      n++;
      if (check) score++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: n < 11
            ? Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: AppColor.customPink,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back_outlined,
                              color: AppColor.white,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 120, left: 40),
                        height: 175,
                        width: 300,
                        decoration: const BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.shadowWhite,
                              blurRadius: 4,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 50, bottom: 20),
                              child: Text(
                                "Questions $n/10",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: AppColor.customPinkText,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 3),
                              child: Text(
                                "${model.quizmodel[n].questions}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(
                            top: 90,
                          ),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 3.5, color: AppColor.customPinkText),
                            color: AppColor.white,
                            shape: BoxShape.circle,
                            boxShadow: const [
                              BoxShadow(
                                color: AppColor.shadowWhite,
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              "14",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: AppColor.customPinkText,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 17,
                        ),
                        TextButton(
                          onPressed: () => answerquestion(
                              model.quizmodel[n].answer![0].check),
                          child: SizedBox(
                            height: 70,
                            width: 300,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                border: Border.all(
                                  width: 3,
                                  color: AppColor.borderPink,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "${model.quizmodel[n].answer?[0].answer}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        TextButton(
                          onPressed: () => answerquestion(
                              model.quizmodel[n].answer![1].check),
                          child: Container(
                            height: 70,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              border: Border.all(
                                width: 3,
                                color: AppColor.borderPink,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "${model.quizmodel[n].answer?[1].answer}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.black,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        TextButton(
                          onPressed: () => answerquestion(
                              model.quizmodel[n].answer![2].check),
                          child: Container(
                            height: 70,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              border: Border.all(
                                width: 3,
                                color: AppColor.borderPink,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "${model.quizmodel[n].answer?[2].answer}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.black,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        TextButton(
                          onPressed: () => answerquestion(
                              model.quizmodel[n].answer![3].check),
                          child: Container(
                            height: 70,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              border: Border.all(
                                width: 3,
                                color: AppColor.borderPink,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "${model.quizmodel[n].answer?[3].answer}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.black,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 34,
                        ),
                        Container(
                          height: 60,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: AppColor.customPink,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Quizzly",
                              style: TextStyle(
                                fontFamily: "DMSans",
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: AppColor.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Result(n: score),
      ),
    );
  }
}
