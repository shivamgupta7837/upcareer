import 'package:flutter/material.dart';
import 'package:upcareer/constant/choose_subjects.dart';
import 'package:upcareer/ui/widgets/myFormField.dart';
import 'package:upcareer/firebase/crud.dart';

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
                if (medicalSubjectController.text == "biology") {
                  GetDocPath.path = "biology";
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseSubjects()));
                } else if (medicalSubjectController.text == "physics") {
                  GetDocPath.path = "physics";
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseSubjects()));
                } else if (medicalSubjectController.text == "english") {
                  GetDocPath.path = "english";
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseSubjects()));
                } else if (medicalSubjectController.text == "chemistry") {
                  GetDocPath.path = "chemistry";
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseSubjects()));
                } else if (medicalSubjectController.text ==
                    "physical education") {
                  GetDocPath.path = "physical education";
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseSubjects()));
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
                course != 'computer') {
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
                  if (nonMedSubjectController.text == "maths") {
                    GetDocPath.path = "maths";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  } else if (nonMedSubjectController.text == "physics") {
                    GetDocPath.path = "physics";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  } else if (nonMedSubjectController.text == "english") {
                    GetDocPath.path = "english";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  } else if (nonMedSubjectController.text == "chemistry") {
                    GetDocPath.path = "chemistry";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  } else if (nonMedSubjectController.text ==
                      "physical education") {
                    GetDocPath.path = "physical education";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  } else if (nonMedSubjectController.text ==
                      "computer science") {
                    GetDocPath.path = "computer science";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
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
                if (commSubjectController.text == "economics") {
                  GetDocPath.path = "economics";
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseSubjects()));
                } else if (commSubjectController.text == "accountancy") {
                  GetDocPath.path = "accountancy";
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseSubjects()));
                } else if (commSubjectController.text == "business studies") {
                  GetDocPath.path = "business studies";
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseSubjects()));
                } else if (commSubjectController.text == "english") {
                  GetDocPath.path = "english";
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseSubjects()));
                } else if (commSubjectController.text == "physical education") {
                  GetDocPath.path = "physical education";
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseSubjects()));
                } else if (commSubjectController.text == "maths") {
                  GetDocPath.path = "maths";
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseSubjects()));
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
                  if (humanitiesSubjectController.text == "economics") {
                    GetDocPath.path = "economics";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  } else if (humanitiesSubjectController.text == "history") {
                    GetDocPath.path = "history";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  } else if (humanitiesSubjectController.text == "geography") {
                    GetDocPath.path = "geography";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  } else if (humanitiesSubjectController.text == "english") {
                    GetDocPath.path = "english";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  } else if (humanitiesSubjectController.text ==
                      "physical education") {
                    GetDocPath.path = "physical education";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  } else if (humanitiesSubjectController.text == "political science") {
                    GetDocPath.path = "political science";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  } else if (humanitiesSubjectController.text == "psychology") {
                    GetDocPath.path = "psychology";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  }else if (humanitiesSubjectController.text == "sociology") {
                    GetDocPath.path = "sociology";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSubjects()));
                  }
                }
              }),
        ),
      ),
    );
  }
}
