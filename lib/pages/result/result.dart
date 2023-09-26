import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_page/home_page.dart';
import 'package:quiz_app/pages/questions/questions.dart';
import 'package:quiz_app/styles/app_icon.dart';

import '../../styles/app_color.dart';

class Result extends StatelessWidget {
  Result({super.key, required this.n});

  final int n;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
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
                          Column(
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
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "$n",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.green,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
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
                          Column(
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
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${10 - n}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.red,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
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
                    margin: EdgeInsets.only(top: 80),
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.white45,
                    ),
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.white45,
                      ),
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                              color: AppColor.shadowWhite,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Your score",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: AppColor.customPinkText,
                              ),
                            ),
                            Text(
                              "${n * 10} ",
                              style: TextStyle(
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
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Questions(),
                  )),
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
                      "Play again",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColor.black,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
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
                      "Home",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColor.black,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
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
    );
  }
}
