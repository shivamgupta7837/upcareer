import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/colors.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {super.key,
      required this.customController,
      required this.hintText,
      required this.customValidator,
      required this.keyBoardType,
      this.enableborder,
      this.borderText,
      this.fieldIcon,
      this.suffixIcon});

  final TextEditingController customController;
  final String hintText;
  final FormFieldValidator customValidator;
  final TextInputType keyBoardType;
  var enableborder;
  var borderText;
  var fieldIcon;
  var suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          icon: fieldIcon,
          hintStyle: GoogleFonts.roboto(color: darkBlue),
          hintText: hintText,
          enabledBorder: enableborder == true
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(width: 1, color: darkBlue))
              : null,
          labelText: borderText,
          suffix: suffixIcon),
      controller: customController,
      keyboardType: keyBoardType,
      validator: customValidator,
      autocorrect: true,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z.@\d_ |]+$')),
      ],
    );
  }
}
