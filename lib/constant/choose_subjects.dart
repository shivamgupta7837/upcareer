import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:upcareer/firebase/crud.dart';
import 'package:upcareer/screens/web/tabs/find_colleges.dart';
import 'colors.dart';

class ChooseSubjects extends StatelessWidget {
  final db = GetDocPath();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: skyBlue.withOpacity(0.33),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: skyBlue,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Text(
                  "What field you want to search colleges/universities ?",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic)),
            ),
            SizedBox(
              height: _size.height < 700 ? 100 : 400,
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
                    return Center(
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
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
            trailing:Lottie.asset("images/slide_right.json",height: 20,width: 30),
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
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
            trailing:Lottie.asset("images/slide_right.json",height: 20,width: 30),
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
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
            trailing:Lottie.asset("images/slide_right.json",height: 20,width: 30),
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
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
            trailing:Lottie.asset("images/slide_right.json",height: 20,width: 30),
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
                  style: GoogleFonts.roboto(fontSize: 16, color: darkBlue,fontWeight: FontWeight.w400),
                ))
          ],
        ),
      ],
    );
  }
}
