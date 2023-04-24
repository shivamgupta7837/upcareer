import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/chat%20gpt/ui/ai_chat.dart';
import 'package:upcareer/constant/colors.dart';
import 'package:upcareer/ui/widgets/university_container.dart';
import 'package:url_launcher/url_launcher.dart';

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
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            leftInfoBar(context),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 600,
                    padding: const EdgeInsets.only(right: 18.0),
                    child: const VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ))
              ],
            ),
            UniversityContainer(),
          ],
        ));
  }



  Widget leftInfoBar(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(left: 40, top: 110, right: 10),
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              children: [
                ChatUi(),
              ],
            )),
      ],
    );
  }
}
