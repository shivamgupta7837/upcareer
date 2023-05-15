import 'package:flutter/material.dart';
import 'package:upcareer/constant/choose_subjects.dart';
import 'package:upcareer/firebase/getDocuments.dart';
import 'package:upcareer/ui/widgets/myFormField.dart';


class SubjectsForSeniorSecondary {
  final _medicalFormKey = GlobalKey<FormState>();
  final _nonMedicalFormKey = GlobalKey<FormState>();
  final _commerceFormKey = GlobalKey<FormState>();
  final _humanitiesFormKey = GlobalKey<FormState>();

  final TextEditingController medicalSubjectController =
      TextEditingController();
  final TextEditingController nonMedSubjectController = TextEditingController();
  final TextEditingController commSubjectController = TextEditingController();
  final TextEditingController humanitiesSubjectController =
      TextEditingController();

  final secondaryList = [
    "biology",
    "maths",
    "physics",
    "computer science",
    "chemistry",
    "english",
    "physical education",
    "economics",
    "business studies",
    "accountancy",
    "geography",
    "history",
    "sociology",
    "psychology",
    "political science"
  ];

  Form subjectsForMedical({required BuildContext context}) {
    return Form(
      key: _medicalFormKey,
      child: SizedBox(
        width: 640,
        height: 48,
        child: MyTextField(
          customController: medicalSubjectController,
          hintText: 'Ex: Biology, Physics, English',
          customValidator: (text) {
            final course = text.toString().toLowerCase();
            if (course.isEmpty) {
              return "This field cannot be empty";
            } else if (course != 'biology' &&
                course != 'physics' &&
                course != 'english' &&
                course != 'chemistry' &&
                course != 'physical education') {
              print(course);
              return "Enter courses related to medical Eg: biology, physics, chemistry.";
            } else {
              return null;
            }
          },
          keyBoardType: TextInputType.text,
          enableborder: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {
              if (_medicalFormKey.currentState!.validate()) {
                if(GetDocuments.degreePath == null){
                  for (int i = 0; i < secondaryList.length; i++) {
                    if (medicalSubjectController.text.toLowerCase() == secondaryList[i]) {
                      GetDocuments.degreePath = secondaryList[i];
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseSubjects()));
                    }
                  }
                }
              }
            },
          ),
        ),
      ),
    );
  }

  Form subjectsForNonMedical({required BuildContext context}) {
    return Form(
      key: _nonMedicalFormKey,
      child: SizedBox(
        width: 640,
        height: 48,
        child: MyTextField(
          customController: nonMedSubjectController,
          hintText: 'Ex: Maths, Physics, Chemistry',
          customValidator: (text) {
            final course = text.toString().toLowerCase();
            if (course.isEmpty) {
              return "This field cannot be empty";
            } else if (course != 'maths' &&
                course != 'physics' &&
                course != 'english' &&
                course != 'chemistry' &&
                course != 'computer science') {
              return "Enter courses related to non medical Eg: physics,computer,chemistry.";
            } else {
              return null;
            }
          },
          keyBoardType: TextInputType.text,
          enableborder: true,
          suffixIcon: IconButton(
              icon: const Icon(Icons.search_rounded),
              onPressed: () {
                if (_nonMedicalFormKey.currentState!.validate()) {
                  for (int i = 0; i < secondaryList.length; i++) {
                    if (nonMedSubjectController.text == secondaryList[i]) {
                      GetDocuments.degreePath = secondaryList[i];
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseSubjects()));
                    }
                  }
                }
              }),
        ),
      ),
    );
  }

  Form subjectsForCommerce({required BuildContext context}) {
    return Form(
      key: _commerceFormKey,
      child: SizedBox(
        width: 640,
        height: 48,
        child: MyTextField(
          customController: commSubjectController,
          hintText: 'Ex: maths, accountancy, business studies',
          customValidator: (text) {
            final course = text.toString().toLowerCase();
            if (course.isEmpty) {
              return "This field cannot be empty";
            } else if (course != 'maths' &&
                course != 'accountancy' &&
                course != 'english' &&
                course != 'business studies' &&
                course != 'economics' &&
                course != 'computer science' &&
                course != 'physical education') {
              return "Enter courses related to commerce Eg: accountancy, maths, english";
            } else {
              return null;
            }
          },
          keyBoardType: TextInputType.text,
          enableborder: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {
              if (_commerceFormKey.currentState!.validate()) {
                for (int i = 0; i < secondaryList.length; i++) {
                  if (commSubjectController.text.toLowerCase() == secondaryList[i]) {
                    GetDocuments.degreePath = secondaryList[i];
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  }
                }
              }
            },
          ),
        ),
      ),
    );
  }

  Form subjectsForHumanities({required BuildContext context}) {
    return Form(
      key: _humanitiesFormKey,
      child: SizedBox(
        width: 640,
        height: 48,
        child: MyTextField(
          customController: humanitiesSubjectController,
          hintText: 'Ex: history, political science, psychology',
          customValidator: (text) {
            final course = text.toString().toLowerCase();
            if (course.isEmpty) {
              return "This field cannot be empty";
            } else if (course != 'political science' &&
                course != 'english' &&
                course != 'psychology' &&
                course != 'sociology' &&
                course != 'history' &&
                course != 'physical education' &&
                course != 'economics' &&
                course != 'computer science' &&
                course != "geography") {
              return "Enter courses related to humanities Eg: Sociology, economics, geography.";
            } else {
              return null;
            }
          },
          keyBoardType: TextInputType.text,
          enableborder: true,
          suffixIcon: IconButton(
              icon: const Icon(Icons.search_rounded),
              onPressed: () {
                if (_humanitiesFormKey.currentState!.validate()) {
                  for (int i = 0; i < secondaryList.length; i++) {
                    if (humanitiesSubjectController.text.toLowerCase() == secondaryList[i]) {
                      GetDocuments.degreePath = secondaryList[i];
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseSubjects()));
                    }
                  }
                }
              }),
        ),
      ),
    );
  }
}
