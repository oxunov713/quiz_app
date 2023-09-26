import 'package:flutter/material.dart';

import '../../../styles/app_color.dart';

class TitleName extends StatelessWidget {
  const TitleName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Quizzly",
      style: TextStyle(
        fontFamily: "ExpSans",
        fontWeight: FontWeight.w400,
        fontSize: 67,
        color: AppColor.white,
      ),
    );
  }
}
