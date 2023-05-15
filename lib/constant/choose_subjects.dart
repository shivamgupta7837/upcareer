import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:upcareer/firebase/getDocuments.dart';
import 'package:upcareer/ui/screens/mobile_body/mobiles_screens/mobUniversities.dart';
import 'package:upcareer/ui/universities.dart';
import '../ui/widgets/app_bar.dart';
import 'colors.dart';

class ChooseSubjects extends StatelessWidget {
  final db = GetDocuments();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: MyAppBar(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _size.width > 700
                ? Text("What field you want to search colleges/universities ?",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic))
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "What field you want to search \n colleges/universities ?",
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic))
                    ],
                  ),
            SizedBox(height: _size.width > 700 ? 120 : 20),
            //subjects container
            SizedBox(
              width: _size.width < 700 ? 300 : 400,
              child: FutureBuilder<DocumentSnapshot>(
                future: db.getUserDegree(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                        child: Lottie.asset("assets/images/loading.json",
                            height: 100.0));
                  }

                  if (snapshot.hasError) {
                    return Center(
                        child: Lottie.asset("assets/images/error.json",
                            height: 100.0));
                  }

                  if (snapshot.data == null) {
                    return const Center(
                      child: Text('Data not found.'),
                    );
                  }
                  return displayListTiles(context, snapshot, _size);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column displayListTiles(BuildContext context,
      AsyncSnapshot<DocumentSnapshot<Object?>> snapshot, Size size) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
          child: ListTile(
            horizontalTitleGap: 30,
            title: snapshot.data!.exists
                ? Text(
                    "${snapshot.data!['degree1']}",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  )
                : Text(
                    "Data not found !!",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 14,
              color: Colors.black,
            ),
            onTap: snapshot.data!.exists
                ? () {
                    GetDocuments.universitiesPath = snapshot.data!['degree1'];
                    if (size.width < 700) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MobUniversities()));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Universities()));
                    }
                  }
                : null,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
          child: ListTile(
            horizontalTitleGap: 30,
            title: snapshot.data!.exists
                ? Text(
                    "${snapshot.data!['degree2']}",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  )
                : Text("Data Not Found !!",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400)),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 14,
              color: Colors.black,
            ),
            onTap: snapshot.data!.exists
                ? () {
                    GetDocuments.universitiesPath = snapshot.data!['degree2'];
                    if (size.width < 700) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MobUniversities()));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Universities()));
                    }
                  }
                : null,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
          child: ListTile(
            horizontalTitleGap: 30,
            title: snapshot.data!.exists
                ? Text(
                    "${snapshot.data!['degree3']}",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  )
                : Text("Data Not Found !!",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400)),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 14,
              color: Colors.black,
            ),
            onTap: snapshot.data!.exists
                ? () {
                    GetDocuments.universitiesPath = snapshot.data!['degree3'];
                    if (size.width < 700) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MobUniversities()));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Universities()));
                    }
                  }
                : null,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
          child: ListTile(
            horizontalTitleGap: 30,
            title: snapshot.data!.exists
                ? Text(
                    "${snapshot.data!['degree4']}",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  )
                : Text("Data Not Found !!",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400)),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 14,
              color: Colors.black,
            ),
            onTap: () {
              GetDocuments.universitiesPath = snapshot.data!['degree4'];
              if (size.width < 700) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MobUniversities()));
              } else {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Universities()));
              }
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: snapshot.data!.exists
                    ? () {
                        if (size.width < 700) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MobUniversities()));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Universities()));
                        }
                      }
                    : null,
                child: Text(
                  "Want to explore more fields ?",
                  style: TextStyle(
                      fontSize: 17,
                      color: darkBlue,
                      fontWeight: FontWeight.w400),
                ))
          ],
        ),
      ],
    );
  }
}
