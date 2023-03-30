import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/colors.dart';


class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: skyBlue,
      title:Text(
        "UpCareer",
        style: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 24),
      ),
      actions:[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                    context,
                   '/');
              },
              child:  Text(
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                  "Home"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                    context,'/recommendations'
                    );
              },
              child:  Text(
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                  "Find Colleges"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    '/about');
              },
              child:  Text(
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                  "About Us"),
            ),
           
            const SizedBox(
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ask_query');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side:  BorderSide(
                    width: 1.0,
                    color: darkBlue
                  ),
                  backgroundColor: skyBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  style: GoogleFonts.roboto(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  "Ask Query",
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
