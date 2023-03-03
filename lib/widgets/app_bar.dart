import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 7,
      shadowColor: Colors.black,
      backgroundColor: Colors.white,
      title:SizedBox(
        width: MediaQuery.of(context).size.width * 0.45,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "UpCareer",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              width: 36,
            ),
          ],
        ),
      ),
      actions:[
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context,
                     '/');
                },
                child: const Text(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                    "Home"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context,'/recommendations'
                      );
                },
                child: const Text(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                    "College Recommendations"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context,
                      '/about');
                },
                child: const Text(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                    "About Us"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context,
                     '/quick_links');
                },
                child: const Text(
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                    "Quick links"),
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, right: 7),
          height: 80,
          child: ElevatedButton(
            onPressed: () {
                  Navigator.pushNamed(context, '/ask_query');
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.black87,
              elevation: 10,
              side: const BorderSide(
                width: 1.0,
              ),
              backgroundColor: Colors.lightBlue[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              maximumSize: const Size(120, 220),
            ),
            child: Text(
              style: GoogleFonts.poppins(
                  color: Colors.black, fontWeight: FontWeight.w500),
              "Ask Query",
            ),
          ),
        ),
      ],
    );
  }
}
