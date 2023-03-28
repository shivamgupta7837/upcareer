import 'package:cloud_firestore/cloud_firestore.dart';

class StudentsQueries {
  String name;
  String email;
  int contact;
  String message;


  final DocumentReference setDataInstance =
      FirebaseFirestore.instance.collection("student_query").doc();

  StudentsQueries.getformDetails(
      {required this.name,
      required this.email,
      required this.contact,
      required this.message});

  setUserDetails() {
    Map<String, dynamic> setData = {
      "name": name,
      "email": email,
      "contact": contact,
      "message": message
    };
    setDataInstance.set(setData);
  }
}


class GetDocPath{
  static  String? path;

    Future<DocumentSnapshot<Object?>>? getUserDegree() async{

    DocumentReference<Map<String, dynamic>> docRef = FirebaseFirestore.instance
        .collection('degrees')
        .doc(path);

    DocumentSnapshot<Map<String, dynamic>> doc = await docRef.get();

    if (doc.exists) {
      return doc;
    } else {
      return doc;
    }
  }
}