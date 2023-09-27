import 'package:flutter/material.dart';

import 'widgets/nav_page.dart';
import 'widgets/nav_page_2.dart';


class Result extends StatelessWidget {
  const Result({super.key, required this.n});

  final int n;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: (n == 10) ? NavPage2(n: n) : NavPage(n: n),
      ),
    );
  }
}
