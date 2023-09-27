import 'package:flutter/material.dart';

import '../../styles/app_color.dart';
import '../../styles/app_icon.dart';
import 'widgets/card.dart';
import 'widgets/levels.dart';
import 'widgets/title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppIcon.backgroundIc), fit: BoxFit.fill),
              color: AppColor.customPink),
          child: ListView(
            children: [
              const Column(
                children: [
                  SizedBox(height: 60),
                  TitleName(),
                  CustomCard(),
                  Levels(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
