import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:upcareer/mobile_body/mobiles_screens/mobAboutUs.dart';
import 'package:upcareer/widgets/app_bar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _size.width <= 700 ? null :
        const PreferredSize(
          preferredSize: Size.fromHeight(85.0),
          child: MyAppBar(),
        ),
        body: SingleChildScrollView(
          child:_size.width <= 700 ? MobileAboutUs() : Container(
            width: _size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.fill,
                  alignment: Alignment.centerRight,
                    child: _aboutUs()),
                const SizedBox(
                  height: 60,
                ),
                FittedBox(
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                    child: _ourVision()),
                const SizedBox(
                  height: 60,
                ),
                FittedBox(
                    fit: BoxFit.fill,
                    alignment: Alignment.center,child: _whatWeDo()),
              ],
            ),
          ),
        ));
  }

  Widget _aboutUs() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: 400, child: Lottie.asset("assets/images/about-us.json")),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "About Us",
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.end,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(18),
                    decoration:  BoxDecoration(
                    color: Colors.lightBlue[100],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Text(
                        "Welcome to UpCareer."
                        "We understand the importance of \n making the right decision when it"
                        " comes to choosing the \n right university or college after high school."
                        "That’s why we \n have created this website to provide you with "
                        "the most \n up-to-date information about universities and colleges \n in  India.",
                        style: GoogleFonts.poppins(
                            fontSize: 22, fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _whatWeDo() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: 400,
              child: Lottie.network(
                  "https://assets7.lottiefiles.com/packages/lf20_cmaqoazd.json")),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "What we do",
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.end,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(18),
                    decoration:  BoxDecoration(
                        color: Colors.lightBlue[100],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Text(
                        "Our experienced team of education experts has gathered \n"
                        "detailed information about universities and colleges from India \n"
                        "We also provide reviews from current and past students so you\n"
                        "can get a better understanding of each college/university. \n"
                        "We provide you with the information you need to make an informed\n"
                        "decision about which university or college is the right fit for you.",
                        style: GoogleFonts.poppins(
                            fontSize: 22, fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ourVision() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Our Mission",
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.end,
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(18),
                  decoration:  BoxDecoration(
                      color: Colors.lightBlue[100],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text(
                      "We take into consideration the quality of education,\n"
                      "the cost of the program, and other factors to give \n"
                      "you the best advice. We are committed to helping \n"
                      "you make the best decision for yourself and your \n"
                      "your future. So, explore our website and learn ",
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.w400)),
                ),
              ],
            ),
          ],
        ),
        Lottie.network(
            "https://assets5.lottiefiles.com/private_files/lf30_shvmjadr.json",
            height: 300),
      ],
    );
  }
}
