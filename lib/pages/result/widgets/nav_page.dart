import 'package:flutter/material.dart';

import '../../../styles/app_color.dart';
import '../../home_page/home_page.dart';
import '../../questions/questions.dart';
import '../../questions/widgets/bottom.dart';
import 'custom_appbar.dart';

class NavPage extends StatelessWidget {
 const NavPage({super.key, required this.n});
final int n;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
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
            ),SizedBox(height: 15,),
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
      ],
    );
  }
}
