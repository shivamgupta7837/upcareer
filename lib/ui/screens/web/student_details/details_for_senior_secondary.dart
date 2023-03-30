import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/ui/widgets/MyElevatedButton.dart';

import '../../../../model/subjects_options_after_12th.dart';

class DetailsOfSeniorSecondaryForm extends StatefulWidget {

  const DetailsOfSeniorSecondaryForm({super.key});

  @override
  State<DetailsOfSeniorSecondaryForm> createState() => _DetailsOfSeniorSecondaryFormState();
}

class _DetailsOfSeniorSecondaryFormState extends State<DetailsOfSeniorSecondaryForm> {
  ///course from 12 th or post graduation
  final TextEditingController medicalSubjectController = TextEditingController();
  final TextEditingController nonMedSubjectController = TextEditingController();
  final TextEditingController commSubjectController = TextEditingController();
  final TextEditingController humanitiesSubjectController = TextEditingController();
  String course="medical";
  final subjects = SubjectsForSeniorSecondary();


  @override
  Widget build(BuildContext context) {
    return Padding(
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
        ///This contain texfield using switch statement
        courseSelection(course),
          const SizedBox(
            height: 25,
          ),
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
        return subjects.subjectsForMedical(context:context);

      case "non-med":
        return subjects.subjectsForNonMedical(context:context);

      case "commerce":
        return subjects.subjectsForCommerce(context:context);

      case "humanities":
        return subjects.subjectsForHumanities(context:context);
    }
  }

}
