
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constant/colors.dart';
import 'firebase/getDocuments.dart';


class Dummy extends StatelessWidget {
  final gd = GetDocuments();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:   SizedBox(
        height: 700,
        child: StreamBuilder<QuerySnapshot>(
          stream: gd.getUniversitiesDetails(),
          builder: (context, snapshot) {
            if (snapshot.hasError)
              return  Text('Error: ${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Container(
                  height: 200.0,
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator(
                    valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.black45),
                  ),
                );
              default:
                List<DocumentSnapshot> data = snapshot.data!.docs;
                return GridView.builder(
                    itemCount: data.length,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        mainAxisExtent: 432),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all()),
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(
                                      top: 15),
                                  height: 120,
                                  child: Image.asset(
                                      "images/lpu-about-logo.jpg")),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "${data[index]['college']}",
                                style: GoogleFonts.roboto(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              IconButton(
                                  onPressed: () {
                                    print('pressed');
                                  },
                                  icon: const Icon(
                                    Icons.info_outlined,
                                    size: 19,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding:
                                EdgeInsets.only(left: 18.0),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 13,
                                ),
                              ),
                              Text(
                                "${data[index]['address']}",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 130,
                                child: Column(
                                  children: [
                                    Text(
                                      "Scholarship",
                                      style: GoogleFonts.roboto(
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const  Icon(
                                      Icons.check,
                                      color: Colors.green,
                                      size: 19,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 168,
                                child: Column(
                                  children: [
                                    Text(
                                      "Entrance Exam",
                                      style: GoogleFonts.roboto(
                                          fontSize: 15,
                                          fontWeight:
                                          FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.red,
                                      size: 19,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 19,
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.black,
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 130,
                                child: Column(
                                  children: [
                                    Text(
                                      "Fees",
                                      style: GoogleFonts.roboto(
                                          fontSize: 17,
                                          fontWeight:
                                          FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "${data[index]['fee']}",
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 130,
                                width: 130,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shadowColor: lightBlue,
                                      elevation: 3,
                                    ),
                                    onPressed: () async {
                                      const url =
                                          "https://admission.lpu.in";
                                      if (await canLaunchUrl(
                                          Uri.parse(url))) {
                                        await launchUrl(
                                            Uri.parse(url));
                                      } else {
                                        throw "Could not launch $url";
                                      }
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Get Started with admission process ?",
                                          style:
                                          GoogleFonts.poppins(
                                              fontSize: 14,
                                              color: darkBlue),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ));
            }
          },
        ),
      )
    );
  }

  getData() {
   final data =  FirebaseFirestore.instance
        .collection('universities')
        .doc('uni')
        .collection('bcom').snapshots();
print(data.runtimeType);
   return data;
  }
}
