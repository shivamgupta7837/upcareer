import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:fuel_efficiency/models/vehicle.dart';

class CheckData extends StatelessWidget {
  QuerySnapshot<Map<String, dynamic>> userData = {} as QuerySnapshot<Map<String, dynamic>>;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          title: const Text("Data"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              print("Button Pressed");
              getData();
            }, child: Text("Press me"),
          ),
        ),
        // body: FutureBuilder(
        //   future: getData(),
        //   builder: (context, snapShot) {
        //     if (snapShot.connectionState == ConnectionState.done) {
        //       if (snapShot.hasData) {
        //         final List<DocumentSnapshot> documents = snapShot.data!.docs;
        //         if(documents.isEmpty){
        //           return Center(
        //             child: Text("It is empty",style: TextStyle(fontSize: 40),),
        //           );
        //         }
        //         return ListView.builder(
        //           itemCount: documents.length,
        //           itemBuilder: (context, index) {
        //             final name = documents[index]['uni_name'];
        //
        //             final location = documents[index]['location'];
        //
        //             final fee = documents[index]['fees'];
        //
        //             final scholarship = documents[index]['scholarship'];
        //
        //             final addmission =  documents[index]['admission_form'];
        //
        //             return Container(
        //               margin: const EdgeInsets.all(7),
        //               decoration: BoxDecoration(
        //                   color: Colors.white, borderRadius: BorderRadius.circular(8)),
        //               child: ListTile(
        //                 title: Text(
        //                   '$name $location',
        //                   style: const TextStyle(
        //                       fontSize: 16, fontWeight: FontWeight.w600),
        //                 ),
        //                 subtitle: Text(
        //                   'fee:, scholarship:',
        //                   style: const TextStyle(
        //                       fontSize: 18, fontWeight: FontWeight.w800),
        //                 ),
        //               ),
        //             );
        //           },
        //         );
        //       } else if (snapShot.hasError) {
        //         return Center(
        //           child: Text(snapShot.error.toString()),
        //         );
        //       }
        //     } else {
        //       return const Center(child: CircularProgressIndicator());
        //     }
        //     return const Text("Went wrong");
        //   },
        // )
    );
  }
 void getData()async{
    final db = await FirebaseFirestore.instance;
    /// by using every colection and document id
    Future<DocumentSnapshot<Map<String, dynamic>>> value;
    var value1 = db.collection("accountancy")
      .doc('Zbi20R9PO8v7smKBY0P1')
      .collection('ca')
      .doc('gK89S89bkXUzYx1atxhT')
      .get();

    // return value;

    /// by using path in doc.

}
  }

