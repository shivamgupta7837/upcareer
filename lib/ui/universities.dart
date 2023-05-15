import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/colors.dart';
import 'package:upcareer/ui/widgets/university_container.dart';
import '../firebase/getDocuments.dart';

class Universities extends StatelessWidget {
  final doc = GetDocuments();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: skyBlue,
          title: Text(
            "UpCareer",
            style: GoogleFonts.roboto(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 40,bottom: 40),
              child: UniversityContainer(),
            )),
          ],
        ));
  }



}
