import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:upcareer/web/tabs/college_recommendation.dart';
import '../widgets/app_bar.dart';

class WebBody extends StatefulWidget {
  const WebBody({super.key});

  @override
  State<WebBody> createState() => _WebBodyState();
}

class _WebBodyState extends State<WebBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(85.0),
          child: MyAppBar(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "There's a bit of Better career in all of us \n"
                          "lets find it together. ",
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Text(
                        "- UpCareer",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                        textAlign: TextAlign.end,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      SizedBox(
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CollegeRecommendation()));
                          },
                            style: ElevatedButton.styleFrom(
                              elevation: 3,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Get Started",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,color: Colors.black)),
                              const SizedBox(width: 8,),
                              Icon(
                                Icons.arrow_circle_right,
                                color: Colors.lightBlue[100],
                                size: 23,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Lottie.asset("images/school.json", height: 400)
                ],
              ),
            )
          ],
        ));
  }
}
