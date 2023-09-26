import 'package:flutter/material.dart';

import '../../../styles/app_color.dart';
import '../../questions/questions.dart';

class Level extends StatelessWidget {
  Level({super.key,required this.text});

  String? text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Questions(),
          )),
      child: Container(
        height: 70,
        width: 300,
        decoration: BoxDecoration(
          color: AppColor.customPink,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(
            width: 3,
            color: AppColor.white,
          ),
        ),
        child:  Center(
          child: Text(
            "$text",
            style: TextStyle(
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