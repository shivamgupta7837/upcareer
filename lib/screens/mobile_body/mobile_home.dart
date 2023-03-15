import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:upcareer/constant/MyElevatedButton.dart';
import 'package:upcareer/screens/mobile_body/mobiles_screens/mobAboutUs.dart';
import 'package:upcareer/screens/mobile_body/mobiles_screens/mobadmissionform.dart';
import 'package:upcareer/screens/mobile_body/mobiles_screens/mobfindcollege.dart';
import 'package:upcareer/screens/mobile_body/mobiles_screens/mob_ask_query.dart';

import '../../constant/colors.dart';


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
        backgroundColor: skyBlue,
        appBar: AppBar(
          elevation: 0,
          shadowColor: Colors.black12,
          backgroundColor: skyBlue,
          title: Text(
            "UpCareer",
            style: GoogleFonts.roboto(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
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
                elevation: 0,
                backgroundColor: skyBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                maximumSize: const Size(100, 180),
                side: BorderSide(
                  color: darkBlue,
                  width: 2
                )
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
        mainAxisAlignment: MainAxisAlignment.center ,
          children: [
             SizedBox(
                height: 330,
                child: Image.asset(
                    "assets/images/home_illustration.png")),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(children: [
                    Text("Navigate Your",style: GoogleFonts.roboto(fontSize: 32,fontWeight: FontWeight.w500,color: Colors.black,fontStyle: FontStyle.italic),),
                    Text("Career !",style: GoogleFonts.roboto(fontSize: 32,fontWeight: FontWeight.w500,color: Colors.black,fontStyle: FontStyle.italic),),
                    const    SizedBox(height: 30,),
                    Text("Start, your career with more than 100 courses and degrees from world class universities.",style: GoogleFonts.roboto(fontSize: 17,fontWeight: FontWeight.w300,color: Colors.black),),

                  ],),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 35,
                  width: 170,
                  child: CustomElevatedButton(label: 'Get Started', onPress: () {  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MobFindCollege())); }, buttonBg: skyBlue,icon: Icons.arrow_circle_right,)
            ),
          ],
        ),])
    );
  }


  // Bottom Navigation bar
  GNav _myBottomNavigation() {
    return GNav(
      gap: 7,
      backgroundColor: Colors.white,
      activeColor: darkBlue,
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
