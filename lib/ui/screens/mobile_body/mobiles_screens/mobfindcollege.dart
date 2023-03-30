import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/colors.dart';
import 'package:upcareer/ui/widgets/MyElevatedButton.dart';

import '../../web/student_details/details_for_senior_secondary.dart';

class MobFindCollege extends StatefulWidget {
  const MobFindCollege({Key? key}) : super(key: key);

  @override
  State<MobFindCollege> createState() => _MobFindCollegeState();
}

class _MobFindCollegeState extends State<MobFindCollege> {
  bool isSeniorSecondaryPressed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
            height: 330,
            child: Image.asset("assets/images/degree_illustration.png")),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Text(
                    "I am a ?",
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
                    "Choose senior secondary if you are looking for graduation,otherwise choose graduation if you are looking for post-graduation.",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 35,
                    child: CustomElevatedButton(
                      label: 'Senior Secondary',
                      buttonBg: Colors.white,
                      onPress: () {
                        setState(() {
                          isSeniorSecondaryPressed = true;
                        });
                      },
                    )),
                SizedBox(
                    height: 35,
                    child: CustomElevatedButton(
                      label: 'Graduation',
                      buttonBg: Colors.white,
                      onPress: () {
                        MaterialPageRoute(
                            builder: (context) => const MobFindCollege());
                      },
                    )),
              ],
            ),
          ],
        ),
      ]),

      ///blur screen behind pop uo container
      Positioned(
          child: isSeniorSecondaryPressed == true
              ? Container(
                  color: Colors.black.withOpacity(0.3),
                )
              : Container()),

      /// pop up container
      if (isSeniorSecondaryPressed == true)
        Container(
            margin: EdgeInsets.only(top: 195, left: 330),
            height: isSeniorSecondaryPressed == true
                ? 275
                : 0, //height of floating container
            width: isSeniorSecondaryPressed == true
                ? 200
                : 0, //width of floating container
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9.0),
            ),
            child: Column(
              children: [
                ///heading container
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 65,
                  color: skyBlue,
                  child: Row(
                    children: [
                      Text("Enter your Details",
                          style: GoogleFonts.roboto(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isSeniorSecondaryPressed = false;
                            });
                          },
                          icon: Icon(Icons.cancel, color: darkBlue, size: 20)),
                    ],
                  ),
                ),
                DetailsOfSeniorSecondaryForm(),
              ],
            ))
    ]));
  }
}
