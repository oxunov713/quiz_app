import 'package:flutter/material.dart';

import '../../../styles/app_color.dart';
import '../../questions/questions.dart';

class Level extends StatelessWidget {
  Level({super.key, required this.function, required this.text});

  final String? text;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:  function,
      child: Container(
        height: 70,
        width: 300,
        decoration: BoxDecoration(
          color: AppColor.customPink,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            width: 3,
            color: AppColor.white,
          ),
        ),
        child: Center(
          child: Text(
            "$text",
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: AppColor.white,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
