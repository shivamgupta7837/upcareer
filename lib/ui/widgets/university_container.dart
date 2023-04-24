import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:upcareer/firebase/getDocuments.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constant/colors.dart';

class UniversityContainer extends StatelessWidget {
  final gd = GetDocuments();

  UniversityContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.46,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "These universities are recognized as leaders in their areas of expertise.",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            color: Colors.black),
                      ),
                    ],
                  )),
              SizedBox(
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
                            child: Lottie.asset("images/loading.json",
                                height: 100.0));
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
                                              child: Image.network(
                                                "${data[index]['logo']}",
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
                                            child: Text(
                                              "${data[index]['name']}",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600),
                                              textDirection: TextDirection.ltr,
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
    );
  }
}
