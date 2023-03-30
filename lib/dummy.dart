import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'constant/colors.dart';

class Dummy extends StatelessWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "What field you want to search colleges/universities ?",
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic)),
           const SizedBox(height: 100,),
            //subjects container
            SizedBox(
              // height: 400,
              width: 400,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
                    child: ListTile(
                      horizontalTitleGap: 30,
                      title: Text(
                        "snapshot.data!['degree1']}",
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
                        "snapshot.data!['degree2']}",
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
                        "snapshot.data!['degree3']}",
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
                        "snapshot.data!['degree4']}",
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
                           print("pressed");
                          },
                          child: Text(
                            "Want to explore more fields ?",
                            style: GoogleFonts.roboto(fontSize: 16, color: darkBlue,fontWeight: FontWeight.w400),
                          ))
                    ],
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
