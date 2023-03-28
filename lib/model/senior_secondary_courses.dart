import 'package:flutter/material.dart';
import 'package:upcareer/constant/choose_subjects.dart';
import 'package:upcareer/constant/myFormField.dart';
import 'package:upcareer/firebase/crud.dart';

class SubjectsForSeniorSecondary {
  final _medicalFormKey = GlobalKey<FormState>();
  final _nonMedicalFormKey = GlobalKey<FormState>();
  final _commerceFormKey = GlobalKey<FormState>();
  final _humanitiesFormKey = GlobalKey<FormState>();

  Form subjectsForMedical(
      {required TextEditingController favSubject,
      required BuildContext context}) {
    return Form(
      key: _medicalFormKey,
      child: SizedBox(
        width: 640,
        height: 48,
        child: MyTextField(
          customController: favSubject,
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
              return "Enter courses related to medical Eg: Biology, Physics, chemistry.";
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
                print(" med validate");
                print("${favSubject.text}");
              }
            },
          ),
        ),
      ),
    );
  }

  Form subjectsForNonMedical(
      {required TextEditingController favSubject,
      required BuildContext context}) {
    return Form(
      key: _nonMedicalFormKey,
      child: SizedBox(
        width: 640,
        height: 48,
        child: MyTextField(
          customController: favSubject,
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
                print("non medical valiadte");
              }
            },
          ),
        ),
      ),
    );
  }

  Form subjectsForCommerce(
      {required TextEditingController favSubject,
      required BuildContext context}) {
    final course = favSubject.text.toLowerCase();
    return Form(
      key: _commerceFormKey,
      child: SizedBox(
        width: 640,
        height: 48,
        child: MyTextField(
          customController: favSubject,
          hintText: 'Ex: Maths, Accountancy, Business-Studies',
          customValidator: (text) {
            if (course.isEmpty) {
              return "This field cannot be empty";
            } else if (course != 'maths' &&
                course != 'accountancy' &&
                course != 'english' &&
                course != 'business_studies' &&
                course != 'economics' &&
                course != 'physical education') {
              return "Enter courses related to commerce Eg: Accountancy, maths, english";
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
                  if (course == "economics") {
                    GetDocPath.path="economics";
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseSubjects()));
                  }else if(course == "accountancy"){
                    GetDocPath.path="accountancy";
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseSubjects()));
                  }else if(course == "business_studies"){
                    GetDocPath.path="business studies";
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseSubjects()));
                  }
                }
              }),
        ),
      ),
    );
  }

  Form subjectsForHumanities(
      {required TextEditingController favSubject,
      required BuildContext context}) {
    return Form(
      key: _humanitiesFormKey,
      child: SizedBox(
        width: 640,
        height: 48,
        child: MyTextField(
          customController: favSubject,
          hintText: 'Ex: History, Political-Science, Psychology',
          customValidator: (text) {
            final course = text.toString().toLowerCase();
            if (course.isEmpty) {
              return "This field cannot be empty";
            } else if (course != 'political-science' &&
                course != 'english' &&
                course != 'psychology' &&
                course != 'sociology' &&
                course != 'history' &&
                course != 'physical-education' &&
                course != 'economics' &&
                course != "geography") {
              return "Enter courses related to humanites Eg: Sociology, economics, geography.";
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
                print("humanities validate");
              }
            },
          ),
        ),
      ),
    );
  }
}
