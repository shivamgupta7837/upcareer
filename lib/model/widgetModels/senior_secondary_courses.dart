import 'package:flutter/material.dart';
import 'package:upcareer/constant/myFormField.dart';

class SubjectsForSeniorSecondary {
  final _medicalFormKey = GlobalKey<FormState>();
  final _nonMedicalFormKey = GlobalKey<FormState>();
  final _commerceFormKey = GlobalKey<FormState>();
  final _humanitiesFormKey = GlobalKey<FormState>();


  Form subjectsForMedical(TextEditingController favSubject) {
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
                course != 'physical-education') {
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

  Form subjectsForNonMedical(TextEditingController favSubject) {
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

  Form subjectsForCommerce(TextEditingController favSubject) {
    return Form(
      key: _commerceFormKey,
      child: SizedBox(
        width: 640,
        height: 48,
        child: MyTextField(
          customController: favSubject,
          hintText: 'Ex: Maths, Accountancy, Business-Studies',
          customValidator: (text) {
            final course = text.toString().toLowerCase();
            if (course.isEmpty) {
              return "This field cannot be empty";
            } else if (course != 'maths' &&
                course != 'Accountancy' &&
                course != 'english' &&
                course != 'Business-Studies' &&
                course != 'economics' &&
                course != 'physical-education') {
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
                print("commerce validate");
              }
            },
          ),
        ),
      ),
    );
  }

  Form subjectsForHumanities(TextEditingController favSubject) {
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
