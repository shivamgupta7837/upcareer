import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FireBase{
  String name;
  String email;
  int contact;
  String message;
  final DocumentReference db =  FirebaseFirestore.instance.collection("student_query").doc();

  FireBase({required this.name,required this.email,required this.contact,required this.message});

  setUserDetials(){
    Map<String,dynamic> setData = {
      "name" : name,
      "email":email,
      "contact" : contact,
      "message" : message
    };
   db.set(setData);
  }

}