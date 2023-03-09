
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/colors.dart';

class CustomElevatedButton extends StatelessWidget {
final String label;
final VoidCallback onPress;
final Color buttonBg;

  const CustomElevatedButton({required this.label, required this.onPress, required this.buttonBg});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor:buttonBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side:  BorderSide(
            width: 1.0,
            color: darkBlue
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(label,
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
          const SizedBox(
            width: 8,
          ),
          Icon(
            Icons.arrow_circle_right,
            color: darkBlue,
            size: 23,
          ),
        ],
      ),
      );
  }
}
