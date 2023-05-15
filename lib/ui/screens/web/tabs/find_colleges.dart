import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/colors.dart';
import 'package:upcareer/ui/widgets/MyElevatedButton.dart';
import 'package:upcareer/ui/widgets/app_bar.dart';
import 'package:upcareer/ui/screens/web/student_details/details_for_senior_secondary.dart';

class WebFindColleges extends StatefulWidget {
  const WebFindColleges({Key? key}) : super(key: key);

  @override
  State<WebFindColleges> createState() => _WebFindCollegesState();
}

class _WebFindCollegesState extends State<WebFindColleges> {

  bool isSeniorSecondaryPressed = false;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _size.width < 700
            ? null: const  PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: MyAppBar(),
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    textSide(context),
                    imageSide(context),
                  ],
                ),
              ],
            ),
            ///blur screen behind pop uo container
            Positioned(
                child: isSeniorSecondaryPressed == true
                    ? Container(
                        color: Colors.black.withOpacity(0.3),
                      )
                    : Container()),

            /// pop up container
            if(isSeniorSecondaryPressed == true)
                Container(
              margin:const EdgeInsets.only(top: 195,left: 330),
                    height:isSeniorSecondaryPressed==true ? 275: 0, //height of floating container
                    width: isSeniorSecondaryPressed==true ?700:0, //width of floating container
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    child: Column(
                      children: [
                        ///heading container
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          height: 65,
                          color: skyBlue,
                          child: Row(
                            children: [
                              Text(
                                  "Enter your Details",
                                  style:
                                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500)
                              ),
                              const  Spacer(),
                              IconButton(
                                onPressed: () { setState(() {
                                isSeniorSecondaryPressed=false;
                              });}, icon: Icon(Icons.cancel,color: darkBlue,size: 20)),

                            ],
                          ),
                        ),
                        //it contain container for adding details of user preferences
                        const DetailsOfSeniorSecondaryForm(),
                      ],
                    ))

          ],
        ));
  }

  SizedBox imageSide(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        children: [
          Image.asset(
            "images/degree_illustration.png",
            height: 580,
          )
        ],
      ),
    );
  }

  SizedBox textSide(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I am a ?",
              style: GoogleFonts.roboto(
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Choose senior secondary if you are looking for graduation,\notherwise choose graduation if you are looking for post-graduation.",
              style: GoogleFonts.roboto(
                  fontSize: 18, fontWeight: FontWeight.w300, color: darkBlue),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 35,
                    child: CustomElevatedButton(
                      label: 'Senior Secondary',
                      onPress: () {
                        setState(() {
                          isSeniorSecondaryPressed = true;
                        });
                      },
                      buttonBg: Colors.white,icon: Icons.arrow_circle_right,
                    )),
                SizedBox(
                    height: 35,
                    child: CustomElevatedButton(
                      label: 'Graduation',
                      onPress: ()=>null,
                      buttonBg: Colors.white,icon: Icons.arrow_circle_right,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
