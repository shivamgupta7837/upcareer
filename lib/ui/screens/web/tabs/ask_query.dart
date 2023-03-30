import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/colors.dart';
import 'package:upcareer/ui/widgets/MyElevatedButton.dart';
import 'package:upcareer/ui/widgets/app_bar.dart';
import 'package:upcareer/ui/widgets/myFormField.dart';

import '../../../../firebase/crud.dart';

class AskQuery extends StatefulWidget {
  const AskQuery({super.key});

  @override
  State<AskQuery> createState() => _AskQueryState();
}

class _AskQueryState extends State<AskQuery> {
  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final contactController = TextEditingController();

  final messageController = TextEditingController();


  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    messageController.dispose();
    contactController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: skyBlue,
        appBar: _size.width < 700
            ? null
            : const PreferredSize(
                preferredSize: Size.fromHeight(56.0),
                child: MyAppBar(),
              ),
        body: askQuery(context));
  }

  Center askQuery(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.73,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Any Query ?",
                  style: GoogleFonts.poppins(
                      fontSize: 26, fontWeight: FontWeight.w600),
                ),
                MyTextField(customController: nameController, hintText: 'Name', customValidator:  (validatorVariable) {
                  if (validatorVariable!.isEmpty) {
                    return "Enter valid name";
                  } else {
                    return null;
                  }
                }, keyBoardType: TextInputType.name,),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
               MyTextField(customController: emailController, hintText: 'E-mail', customValidator:  (email) {
                 if (email!.isEmpty) {
                   return "Enter valid email";
                 } else {
                   return null;
                 }
               }, keyBoardType: TextInputType.emailAddress,),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
               MyTextField(customController: contactController, hintText: 'Contact', customValidator: (contact) {
                 if (contact!.isEmpty) {
                   return 'Please enter your contact number';
                 } else if (contact.length != 10) {
                   return 'Contact number should be of 10 digits';
                 }
                 return null;
               }, keyBoardType: TextInputType.phone,),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
               MyTextField(customController: messageController, hintText: 'Message', customValidator: (messgae) {
                 if (messgae!.isEmpty) {
                   return "This field cannot be empty";
                 } else {
                   return null;
                 }
               }, keyBoardType: TextInputType.text),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.049,
                ),
                _submitButton(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _submitButton(BuildContext context) {
    return SizedBox(
      height: 35,
      child: CustomElevatedButton(label: 'Submit', onPress: () { setUserData();}, buttonBg: Colors.white,icon: Icons.arrow_circle_right)
    );
  }

  void clearTextField() {
    nameController.clear();
    emailController.clear();
    contactController.clear();
    messageController.clear();
  }

  void setUserData() {
    if(_formKey.currentState!.validate()){
      final db = StudentsQueries.getformDetails(name: nameController.text, email: emailController.text, contact: int.parse(contactController.text), message: messageController.text);
      db.setUserDetails();
      clearTextField();
    }
  }
}
