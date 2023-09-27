import 'package:flutter/material.dart';

import '../../../styles/app_color.dart';
import 'level.dart';

class Levels extends StatelessWidget {
  const Levels({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Choose the appropriate level...",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: AppColor.white,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 20),
        Level(text: "Level 1"),
        SizedBox(height: 20),
        Level(text: "Level 2"),
        SizedBox(height: 20),
        Level(text: "Level 3"),
      ],
    );
  }
}
