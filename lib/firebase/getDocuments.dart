import 'package:cloud_firestore/cloud_firestore.dart';

class GetDocuments{
  static  String? degreePath;
  static  String? universityPath;
  final db = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Object?>>? getUserDegree() async{

    DocumentReference<Map<String, dynamic>> docRef =  db
        .collection('degrees')
        .doc(degreePath);

    DocumentSnapshot<Map<String, dynamic>> doc = await docRef.get();

    if (doc.exists) {
      return doc;
    } else {
      return doc;
    }
  }
   getUniversitiesDetails() {
    final data =  db
        .collection('universities')
        .doc('uni')
        .collection('bcom').snapshots();
    print("dataaaaaaaaaaaaaaaaaaaaaaaaaaaa: ${data.runtimeType}");
    return data;
  }
}