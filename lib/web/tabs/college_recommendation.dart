import 'package:flutter/material.dart';
import 'package:upcareer/widgets/app_bar.dart';

class CollegeRecommendation extends StatelessWidget {
  const CollegeRecommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar:  _size.width <700 ? null :  const PreferredSize(
        preferredSize:  Size.fromHeight(85.0),
        child:MyAppBar(),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.lightBlue[100],
            height: double.infinity,
            width: MediaQuery.of(context).size.width/2,
            child: Column(
              children: [
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
              ],
            ),
          ),
          Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width/2,
            child: Column(
              children: [
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
                 // Text("dfhas fihdsiufhuis fif iaf"),
              ],
            ),
          ),
        ],
      )
    );
  }
}
