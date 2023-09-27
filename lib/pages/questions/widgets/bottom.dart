import 'package:flutter/material.dart';

import '../../../styles/app_color.dart';

class BottomCustom extends StatelessWidget {
  const BottomCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
