import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/MyElevatedButton.dart';

import '../../../model/widgetModels/senior_secondary_courses.dart';

class DetailsOfSeniorSecondaryForm extends StatefulWidget {

  const DetailsOfSeniorSecondaryForm({super.key});

  @override
  State<DetailsOfSeniorSecondaryForm> createState() => _DetailsOfSeniorSecondaryFormState();
}

class _DetailsOfSeniorSecondaryFormState extends State<DetailsOfSeniorSecondaryForm> {
  ///course from 12 th or post graduation
  final TextEditingController favSubject1Controller = TextEditingController();
  final TextEditingController favSubject2Controller = TextEditingController();
  final TextEditingController favSubject3Controller = TextEditingController();
  final TextEditingController favSubject4Controller = TextEditingController();
  String course="medical";
  final subjects = SubjectsForSeniorSecondary();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Choose one favourite course",
            style:
            GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500)
          ),
          const SizedBox(
            height: 12,
          ),
          //This contain elevated button for choose stream opted in 12th standard
          choose12thStream(),
          const SizedBox(
            height: 25,
          ),
          Text(
              "Choose one favourite subject from previously opted course",
              style:
              GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500)
          ),
          const SizedBox(
            height: 12,
          ),
        courseSelection(course),
          const SizedBox(
            height: 12,
          ),          Text(
              "Choose degree on for college recommendation",
              style:
              GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500)
          ),
          const SizedBox(
            height: 16,
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(10, (index) {
              return CustomElevatedButton(label: "course1", onPress: (){
                print("Pressed");
              }, buttonBg: Colors.white,
              icon: Icons.check_circle,);
            }),
          )
        ],
      ),
    );
  }

  Row choose12thStream() {
    return Row(
              children: [
                CustomElevatedButton(
                    label: "Medical",
                    onPress: () {
                      setState(() {
                         course = "medical";
                      });
                    },
                    buttonBg: Colors.white,
                    textDir: TextAlign.center),
                const SizedBox(width: 15),
                CustomElevatedButton(
                    label: "Non-Med",
                    onPress: () {
                      setState(() {
                      course="non-med";
                        // subjectsForNonMedical();
                      });
                    },
                    buttonBg: Colors.white,
                    textDir: TextAlign.center),
                const SizedBox(width: 15),
                CustomElevatedButton(
                    label: "Humanities",
                    onPress: () {
                      setState(() {
                        course="humanities";
                      });
                    },
                    buttonBg: Colors.white,
                    textDir: TextAlign.center),
                const SizedBox(width: 15),
                CustomElevatedButton(
                    label: "Commerce",
                    onPress: () {
                      setState(() {
                        course="commerce";
                      });
                    },
                    buttonBg: Colors.white,
                    textDir: TextAlign.center),
              ],
            );
  }

  courseSelection(String courseName) {
    switch(courseName){
      case "medical":
        return subjects.subjectsForMedical(favSubject1Controller);

      case "non-med":
        return subjects.subjectsForNonMedical(favSubject2Controller);

      case "commerce":
        return subjects.subjectsForCommerce(favSubject3Controller);

      case "humanities":
        return subjects.subjectsForHumanities(favSubject4Controller);
    }
  }


}