import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileAboutUs extends StatelessWidget {
  const MobileAboutUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _aboutUs(),
            const SizedBox(
              height: 40,
            ),
            _ourVision(),
            const SizedBox(
              height: 40,
            ),
            _whatWeDo(),
          ],
        ),
      ),
    );
  }

  Container _aboutUs() {
    return Container(
      margin: const  EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Text(
            "About Us",
            style: GoogleFonts.poppins(
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.end,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 280, child: Image.asset("assets/images/team_work.png")),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const  EdgeInsets.all(13),
            margin: const EdgeInsets.only(left: 15,right: 15),
            decoration: BoxDecoration(

                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8)),
            child: Text(
              "Welcome to UpCareer."
              "We understand the importance of making the right decision when it"
              " comes to choosing the right university or college after high school."
              "That’s why we have created this website to provide you with "
              "the most up-to-date information about universities and colleges in  India.",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }

  Container _whatWeDo() {
    return Container(
      margin: const EdgeInsets.only(top:10,left: 15,right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "What we do",
            style: GoogleFonts.poppins(
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.end,
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
              height: 280,
              child: Image.asset(
                  "assets/images/what_we_do.png")),
          Container(
             padding: const  EdgeInsets.all(13),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8)),
            child: Text(
                "Our experienced team of education experts has gathered "
                "detailed information about universities and colleges from India "
                "We also provide reviews from current and past students so you "
                "can get a better understanding of each college/university. "
                "We provide you with the information you need to make an informed "
                "decision about which university or college is the right fit for you.",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w400),textDirection: TextDirection.ltr,),
          ),
        ],
      ),
    );
  }

  Widget _ourVision() {
    return Container(
      padding: const  EdgeInsets.all(13),
      margin: const EdgeInsets.only(left: 15,right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
        "Our Mission",
            style: GoogleFonts.poppins(
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.end,
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
              height: 280,
              child: Image.asset(
              "assets/images/our_vision.png"),),
           Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8)),
            child: Text(
                "We take into consideration the quality of education,"
                    "the cost of the program, and other factors to give"
                    "you the best advice. We are committed to helping"
                    "you make the best decision for yourself and "
                    "your future. So, explore our website and learn",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w400),
          ),)
        ],
      ),
    );

  }
}
