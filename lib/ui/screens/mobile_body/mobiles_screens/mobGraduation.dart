import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class Graduation extends StatelessWidget {
  const Graduation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Lottie.asset("assets/images/pageNotFound.json"),
      ),
    );
  }
}
