import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:upcareer/mobile_body/mobiles_screens/mobAboutUs.dart';
import 'package:upcareer/mobile_body/mobiles_screens/mobadmissionform.dart';
import 'package:upcareer/mobile_body/mobiles_screens/mobfindcollege.dart';
import 'package:upcareer/mobile_body/mobiles_screens/mob_ask_query.dart';


class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
int currentIndex = 0;
final tabs=[
 const MobileBody(),
  const MobFindCollege(),
  const MobileAboutUs(),
  const MobAdmissionForm()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          elevation: 7,
          shadowColor: Colors.black12,
          backgroundColor: Colors.white,
          title: Text(
            "UpCareer",
            style: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),
          ),
          actions: [
            Container(
            margin: const EdgeInsets.only(top: 10, right: 7,bottom: 10),
            height: 80,
            child: ElevatedButton(
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MobAskQuery()));
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.black26,
                elevation: 8,
                backgroundColor: Colors.lightBlue[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                maximumSize: const Size(100, 180),
              ),
              child:
                  Text(
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500,fontSize: 10),
                    "Ask Query",
                  ),


            ),
          ),],
        ),
        body: currentIndex==0 ? _mobileHomePage(context):tabs[currentIndex],
        bottomNavigationBar: _myBottomNavigation());
  }

  // Home page
  Center _mobileHomePage(BuildContext context) {
    return Center(
      child: Column(
          children: [
             SizedBox(
                height: 330,
                child: Lottie.network(
                    "https://assets7.lottiefiles.com/packages/lf20_dT1E1P.json")),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                    "There's a bit of Better career in all of us, \n"
                    "lets find it together. ",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w400)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  "- UpCareer",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
            const SizedBox(height: 38,),
            Container(
              margin: const EdgeInsets.all(8),
              width: 180,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MobFindCollege()));
                },
                style: ElevatedButton.styleFrom(
                  elevation: 5,
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
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.arrow_circle_right,
                      color: Colors.lightBlue[100],
                      size: 28,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }


  // Bottom Navigation bar
  GNav _myBottomNavigation() {
    return GNav(
      gap: 7,
      backgroundColor: Colors.white,
      activeColor: Colors.black,
      tabBackgroundColor: Colors.white,
      padding:const  EdgeInsets.all(18),
      selectedIndex: currentIndex,
      onTabChange: (index){
        setState(() {
          currentIndex = index;
        });
      },
      tabs: const [
         GButton(
          icon: Icons.home_outlined,
          text: 'Home',
          iconSize: 30,
          iconColor: Colors.black,
        ),
         GButton(
            icon: Icons.search,
            text: 'Find Colleges',
            iconSize: 30,
            iconColor: Colors.black),
         GButton(
            icon: Icons.info_outline,
            text: 'About Us',
            iconSize: 30,
            iconColor: Colors.black,
        ),
          GButton(
            icon: Icons.link_sharp,
            text: 'Quick Linkes',
            iconSize: 30,
            iconColor: Colors.black,
        )
      ],
    );
  }
}
