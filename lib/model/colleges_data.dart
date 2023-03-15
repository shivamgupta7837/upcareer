import 'package:cloud_firestore/cloud_firestore.dart';

class CollegesData {
  String collegeName;
  String collegeLocation;
  int fees;
  bool scholarship;
  String admissionForm;

  CollegesData({required this.collegeName,
    required this.collegeLocation,
    required this.fees,
    required this.admissionForm,
    required this.scholarship});

  factory CollegesData.fromDataBase(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();
    return CollegesData(
      collegeName: data!['university_name'],
      collegeLocation: data['location'],
      fees: data['fees'],
      admissionForm: data['admission_form'],
      scholarship: data['scholarship'],
    );
  }

  // factory CollegesData.fromDataBase(
  //     DocumentSnapshot<Map<String, dynamic>> document) {
  //   return CollegesData(
  //     collegeName: document.data.toString().contains('university_name')
  //         ? document.get('university_name')
  //         : 'not given',
  //     collegeLocation: document.data.toString().contains('location')
  //         ? document.get('location')
  //         : 'not given',
  //     fees: document.data.toString().contains('fees')
  //         ? document.get('fees')
  //         : 'not given',
  //     admissionForm: document.data.toString().contains('admission_form')
  //         ? document.get('admission_form')
  //         : 'not given',
  //     scholarship: document.data.toString().contains('scholarship')
  //         ? document.get('scholarship')
  //         : 'not given',
  //   );
  // }

}
