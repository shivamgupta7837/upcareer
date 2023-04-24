import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:upcareer/ui/screens/mobile_body/mobiles_screens/mob_ask_query.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constant/colors.dart';
import '../../../../firebase/getDocuments.dart';

class MobUniversities extends StatelessWidget {
  final gd = GetDocuments();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back,color: Colors.black,),),
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
      body:  SingleChildScrollView(
        child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 8),
                            child: Text(
                              "These universities are recognized as leaders in their areas of expertise.",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(left:25,right:25),
                  height: 700,
                  child: StreamBuilder<QuerySnapshot>(
                    stream: gd.getUniversitiesDetails(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      }
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return Container(
                              height: 200.0,
                              alignment: Alignment.center,
                              child: Lottie.asset("assets/images/loading.json",
                                  height: 100.0));
                        default:
                          List<DocumentSnapshot> data = snapshot.data!.docs;
                          return ListView.builder(
                              itemCount: data.length,
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
                                            // height: 120,
                                            child: Image.network(
                                              "${data[index]['logo']}",height: 150,
                                            )),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 18.0),
                                          child: Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.only(right:15.0),
                                              child: Text(
                                                "${data[index]['name']}",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600),
                                                textDirection: TextDirection.ltr,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        IconButton(
                                            onPressed: () async {
                                              final url =
                                                  "${data[index]['website']}";
                                              if (await canLaunchUrl(
                                                  Uri.parse(url))) {
                                                await launchUrl(
                                                    Uri.parse(url));
                                              } else {
                                                throw "Could not launch $url";
                                              }
                                            },
                                            icon: const Icon(
                                              Icons.info_outlined,
                                              size: 19,
                                            ))
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 18.0, right: 5),
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            size: 13,
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15.0),
                                            child: Text(
                                              "${data[index]['address']}",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 12,
                                                  fontWeight:
                                                  FontWeight.w400),
                                            ),
                                          ),
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
                                              Icon(
                                                data[index]['scholarship'] ==
                                                    true
                                                    ? Icons.check
                                                    : Icons.cancel_outlined,
                                                color: data[index]
                                                ['scholarship'] ==
                                                    true
                                                    ? Colors.green
                                                    : Colors.red,
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
                                                data[index]['entrance exam'] ==
                                                    false
                                                    ? Icons.cancel_outlined
                                                    : Icons.check,
                                                color: data[index][
                                                'entrance exam'] ==
                                                    false
                                                    ? Colors.red
                                                    : Colors.green,
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
                                                "${data[index]['fees']}",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 14,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 100,
                                          width: 130,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shadowColor: lightBlue,
                                                elevation: 0,
                                              ),
                                              onPressed: () async {
                                                final url =
                                                    "${data[index]['admission']}";
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
              ],
            )),
      )
    );
  }
}
