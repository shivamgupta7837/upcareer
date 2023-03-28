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

}
