import 'package:flutter/material.dart';

import '../../../styles/app_color.dart';
import '../../../styles/app_icon.dart';
import '../../home_page/home_page.dart';
import '../../questions/questions.dart';
import '../../questions/widgets/bottom.dart';
import 'custom_appbar.dart';

class NavPage2 extends StatelessWidget {
  const NavPage2({super.key, required this.n});

  final int n;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppIcon.congratulate)),
      ),
      child: Column(
        children: [
          CustomAppbar(n: n),
          const SizedBox(height: 50),
          TextButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Questions(),
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
                child: const Center(
                  child: Text(
                    "Play again",
                    style: TextStyle(
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
                builder: (context) => const HomePage(),
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
                child: const Center(
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.black,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 70),
          const BottomCustom(),
        ],
      ),
    );
  }
}
