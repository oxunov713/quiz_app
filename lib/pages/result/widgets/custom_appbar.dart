import 'package:flutter/material.dart';

import '../../../styles/app_color.dart';
import '../../../styles/app_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.n});

  final int n;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColor.customPink,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
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
          margin: const EdgeInsets.only(top: 330, left: 40),
          height: 130,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: 15,
                        width: 15,
                        image: AssetImage(AppIcon.trueIc),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$n",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColor.green,
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        "Correct",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColor.black,
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: 15,
                        width: 15,
                        image: AssetImage(AppIcon.falseIc),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${10 - n}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColor.red,
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        "Wrong",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColor.black,
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 80),
            height: 180,
            width: 180,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.white45,
            ),
            child: Container(
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.white45,
              ),
              child: Container(
                margin: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: AppColor.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.shadowWhite,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Your score",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: AppColor.customPinkText,
                      ),
                    ),
                    Text(
                      "${n * 10} ",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: AppColor.customPinkText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
