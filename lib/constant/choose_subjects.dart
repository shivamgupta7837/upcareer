import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/firebase/crud.dart';
import 'package:upcareer/ui/screens/web/tabs/find_colleges.dart';
import 'colors.dart';

class ChooseSubjects extends StatelessWidget {
  final db = GetDocPath();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: darkBlue.withOpacity(0.33),
      appBar: AppBar(
        leading: IconButton(
          icon:const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: skyBlue,
        title: Text(
          "UpCareer",
          style: GoogleFonts.roboto(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "What field you want to search colleges/universities ?",
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic)),
           const SizedBox(height: 120,),
            //subjects container
            SizedBox(
              // height: _size.height < 700 ? 100 : 400,
              width: _size.width < 700 ? 100 : 400,
              child: FutureBuilder<DocumentSnapshot>(
                future: db.getUserDegree(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (snapshot.hasError) {
                    return const Center(
                      child: Text('Error: snapshot.error}'),
                    );
                  }

                  if (snapshot.data == null) {
                    return const Center(
                      child: Text('Data not found.'),
                    );
                  }
                  return displayListTiles(context,snapshot);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column displayListTiles(BuildContext context,AsyncSnapshot<DocumentSnapshot<Object?>> snapshot) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
          child: ListTile(
            horizontalTitleGap: 30,
            title: Text(
              "${snapshot.data!['degree1']}",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined,size: 14,color: Colors.black,),
            onTap: (){
              print("pressed");
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
          child: ListTile(
            horizontalTitleGap: 30,
            title: Text(
              "${snapshot.data!['degree2']}",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined,size: 14,color: Colors.black,),
            onTap: (){
              print("pressed");
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
          child: ListTile(
            horizontalTitleGap: 30,
            title: Text(
              "${snapshot.data!['degree3']}",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined,size: 14,color: Colors.black,),
            onTap: (){
              print("pressed");
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
          child: ListTile(
            horizontalTitleGap: 30,
            title: Text(
              "${snapshot.data!['degree4']}",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
            trailing:const Icon(Icons.arrow_forward_ios_outlined,size: 14,color: Colors.black,),
            onTap: (){
              print("pressed");
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WebFindColleges()));
                },
                child: Text(
                  "Want to explore more fields ?",
                  style: TextStyle(fontSize: 17, color: darkBlue,fontWeight: FontWeight.w400),
                ))
          ],
        ),
      ],
    );
  }
}
