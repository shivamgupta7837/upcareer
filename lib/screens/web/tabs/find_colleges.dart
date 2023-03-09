import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/MyElevatedButton.dart';
import 'package:upcareer/constant/colors.dart';
import 'package:upcareer/constant/app_bar.dart';

class WebFindColleges extends StatefulWidget {
  const WebFindColleges({Key? key}) : super(key: key);

  @override
  State<WebFindColleges> createState() => _WebFindCollegesState();
}

class _WebFindCollegesState extends State<WebFindColleges> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const PreferredSize(
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
            // Positioned.fill(
            //   child: Container(
            //     color: Colors.black26.withOpacity(0.6),
            //   ),
            // ),
            // Center(
            //   child: Container(
            //     height: 500,
            //       width: 800,
            //     padding: EdgeInsets.all(16.0),
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(8.0),
            //     ),
            //     child: Column(
            //       children:  [
            //         Text(
            //           'Please submit this also',
            //           style: GoogleFonts.roboto(
            //             fontSize: 18.0,
            //             fontWeight: FontWeight.w300,
            //           ),
            //           textAlign: TextAlign.left,
            //         ),
            //         Text(
            //           'Please submit this also',
            //           style: GoogleFonts.roboto(
            //             fontSize: 18.0,
            //             fontWeight: FontWeight.w300,
            //           ),
            //           textAlign: TextAlign.left,
            //         ),
            //         const SizedBox(height: 60),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             SizedBox(
            //               height: 35,
            //               child: ElevatedButton(
            //                 onPressed: () {
            //                   Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) =>
            //                           const WebFindColleges()));
            //                 },
            //                 style: ElevatedButton.styleFrom(
            //                   backgroundColor: Colors.white,
            //                   shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(8),
            //                   ),
            //                   side:  BorderSide(
            //                       width: 1.0,
            //                       color: darkBlue
            //                   ),
            //                 ),
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                   children: [
            //                     Text("Senior Secondary",
            //                         style: GoogleFonts.poppins(
            //                             fontSize: 16,
            //                             fontWeight: FontWeight.w400,color: Colors.black)),
            //                     const SizedBox(width: 8,),
            //                     Icon(
            //                       Icons.arrow_circle_right,
            //                       color: darkBlue,
            //                       size: 23,
            //                     ),
            //                   ],
            //                 ),
            //               ),),
            //             SizedBox(
            //                 height: 35,
            //                 child: ElevatedButton(
            //                   onPressed: () {
            //                     Navigator.push(
            //                         context,
            //                         MaterialPageRoute(
            //                             builder: (context) =>
            //                             const WebFindColleges()));
            //                   },
            //                   style: ElevatedButton.styleFrom(
            //                     backgroundColor: Colors.white,
            //                     shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(8),
            //                     ),
            //                     side:  BorderSide(
            //                         width: 1.0,
            //                         color: darkBlue
            //                     ),
            //
            //                   ),
            //                   child: Row(
            //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                     children: [
            //                       Text("Graduate",
            //                           style: GoogleFonts.poppins(
            //                               fontSize: 16,
            //                               fontWeight: FontWeight.w400,color: Colors.black)),
            //                       const SizedBox(width: 8,),
            //                       Icon(
            //                         Icons.arrow_circle_right,
            //                         color: darkBlue,
            //                         size: 23,
            //                       ),
            //                     ],
            //                   ),)
            //             ),
            //           ],
            //         ),
            //         Text(
            //           'Please submit this also',
            //           style: GoogleFonts.roboto(
            //             fontSize: 18.0,
            //             fontWeight: FontWeight.w300,
            //           ),
            //           textAlign: TextAlign.left,
            //         ),
            //         const SizedBox(height: 60),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             SizedBox(
            //               height: 35,
            //               child: ElevatedButton(
            //                 onPressed: () {
            //                   Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) =>
            //                           const WebFindColleges()));
            //                 },
            //                 style: ElevatedButton.styleFrom(
            //                   backgroundColor: Colors.white,
            //                   shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(8),
            //                   ),
            //                   side:  BorderSide(
            //                       width: 1.0,
            //                       color: darkBlue
            //                   ),
            //                 ),
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                   children: [
            //                     Text("Senior Secondary",
            //                         style: GoogleFonts.poppins(
            //                             fontSize: 16,
            //                             fontWeight: FontWeight.w400,color: Colors.black)),
            //                     const SizedBox(width: 8,),
            //                     Icon(
            //                       Icons.arrow_circle_right,
            //                       color: darkBlue,
            //                       size: 23,
            //                     ),
            //                   ],
            //                 ),
            //               ),),
            //             SizedBox(
            //                 height: 35,
            //                 child: ElevatedButton(
            //                   onPressed: () {
            //                     Navigator.push(
            //                         context,
            //                         MaterialPageRoute(
            //                             builder: (context) =>
            //                             const WebFindColleges()));
            //                   },
            //                   style: ElevatedButton.styleFrom(
            //                     backgroundColor: Colors.white,
            //                     shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(8),
            //                     ),
            //                     side:  BorderSide(
            //                         width: 1.0,
            //                         color: darkBlue
            //                     ),
            //
            //                   ),
            //                   child: Row(
            //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                     children: [
            //                       Text("Graduate",
            //                           style: GoogleFonts.poppins(
            //                               fontSize: 16,
            //                               fontWeight: FontWeight.w400,color: Colors.black)),
            //                       const SizedBox(width: 8,),
            //                       Icon(
            //                         Icons.arrow_circle_right,
            //                         color: darkBlue,
            //                         size: 23,
            //                       ),
            //                     ],
            //                   ),)
            //             ),
            //           ],
            //         ),
            //
            //       ],
            //     ),
            //   ),
            // )
      ],
        ));
  }


  SizedBox imageSide(BuildContext context) {
    return SizedBox(
                width: MediaQuery.of(context).size.width/2,
                child: Column(
                  children: [
                    Image.asset("images/degree_illustration.png",height: 580,)
                  ],
              ),
                );
  }

  SizedBox textSide(BuildContext context) {
    return SizedBox(
                width: MediaQuery.of(context).size.width/2,
                child: Padding(
                  padding: const EdgeInsets.only(left:28.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("I am a ?",style: GoogleFonts.roboto(fontSize: 45,fontWeight: FontWeight.w500,color: Colors.black,fontStyle: FontStyle.italic),),
                      const    SizedBox(height: 20,),
                      Text("Choose senior secondary if you are looking for graduation,\notherwise choose graduation if you are looking for post-graduation.",style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w300,color: darkBlue),),
                      const    SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 35,
                            child: CustomElevatedButton(label: 'Senior Secondary', onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const WebFindColleges()));
                            }, buttonBg: Colors.white,)),
                          SizedBox(
                              height: 35,
                              child:CustomElevatedButton(label: 'Graduation', onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const WebFindColleges()));
                              }, buttonBg: Colors.white,)
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}
