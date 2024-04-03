import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/provider/providerlevel.dart';

import '../../../data/quiz_data.dart';
import '../../../models/quiz_data_model.dart';
import '../../../styles/app_color.dart';
import '../../questions/questions.dart';
import 'level.dart';

class Levels extends StatefulWidget {
  Levels({super.key});

  @override
  State<Levels> createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  late ProviderLevel providerLevelR;
  late ProviderLevel providerLevelW;

  @override
  void didChangeDependencies() {
    providerLevelR = context.read<ProviderLevel>();
    providerLevelW = context.watch<ProviderLevel>();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Choose the appropriate level...",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: AppColor.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 20),
        Level(
            text: "Elementary",
            function: () {
              providerLevelR.elementaryLevel();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Questions(),
                ),
              );

            }),
        const SizedBox(height: 20),
        Level(
            text: "Pre-Intermediate",
            function: () {
              providerLevelR.preInterLevel();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Questions(),
                ),
              );
            }),
        const SizedBox(height: 20),
        Level(
            text: "Intermediate",
            function: () {
              providerLevelR.interLevel();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Questions(),
                ),
              );
            }),
        const SizedBox(height: 20),
      ],
    );
  }
}
