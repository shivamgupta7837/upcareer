import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/MyElevatedButton.dart';
import 'package:upcareer/constant/colors.dart';

class MobFindCollege extends StatelessWidget {
  const MobFindCollege({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  SizedBox(
                      height: 330,
                      child: Image.asset(
                          "assets/images/degree_illustration.png")),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(children: [
                          Text("I am a ?",style: GoogleFonts.roboto(fontSize: 45,fontWeight: FontWeight.w500,color: Colors.black,fontStyle: FontStyle.italic),),
                          const    SizedBox(height: 30,),
                          Text("Choose senior secondary if you are looking for graduation,otherwise choose graduation if you are looking for post-graduation.",style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.black),),

                        ],),
                      ),
                      const    SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 35,
            child: CustomElevatedButton(label: 'Senior Secondary', buttonBg: Colors.white,onPress: (){
              MaterialPageRoute(
                  builder: (context) =>
                  const MobFindCollege());
            },)),
          SizedBox(
              height: 35,
              child:CustomElevatedButton(label: 'Graduation', buttonBg: Colors.white,onPress: (){
                MaterialPageRoute(
                    builder: (context) =>
                    const MobFindCollege());
              },)
          ),
        ],
      ),
                    ],
                  ),])
        )
    );
  }
}
