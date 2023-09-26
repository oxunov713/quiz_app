import 'package:flutter/material.dart';

import '../../../styles/app_color.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Container(
        height: 210,
        width: 360,
        decoration: const BoxDecoration(
          color: AppColor.white70,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "Welcome to Quizzly!",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColor.customPinkText,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Text(
                "With Quizzly, you can improve your thinking, intelligence and logical skills.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColor.customPinkText,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
