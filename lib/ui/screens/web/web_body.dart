import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/colors.dart';
import 'package:upcareer/ui/screens/web/tabs/find_colleges.dart';
import 'package:upcareer/ui/widgets/MyElevatedButton.dart';
import '../../widgets/app_bar.dart';

class WebBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: skyBlue,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: MyAppBar(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                textSide(context),
                imageSide(context),
              ],
            ),
          ],
        ));
  }

  SizedBox imageSide(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: Column(
        children: [
          Image.asset(
            "images/home_illustration.png",
            height: 580,
          )
        ],
      ),
    );
  }

  SizedBox textSide(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Navigate Your",
              style: GoogleFonts.roboto(
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              "Career !",
              style: GoogleFonts.roboto(
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Start, your career with more than 100 courses \nand degrees from world-class universities.",
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const SizedBox(height: 50),
            SizedBox(
                height: 35,
                width: 170,
                child: CustomElevatedButton(
                  label: 'Get Started',
                  onPress: () {
                      Navigator.pushNamed(context, '/recommendations');
                  },
                  buttonBg: skyBlue,
                    icon: Icons.arrow_circle_right
                ))
          ],
        ),
      ),
    );
  }
}
