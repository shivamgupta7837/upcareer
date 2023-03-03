import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/widgets/app_bar.dart';

import '../../firebase/crud.dart';

class AskQuery extends StatefulWidget {
  @override
  State<AskQuery> createState() => _AskQueryState();
}

class _AskQueryState extends State<AskQuery> {
  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final contactController = TextEditingController();

  final messageController = TextEditingController();

  // final db = FirebaseFirestore.instance.collection("student_query").doc();

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
        backgroundColor: Colors.lightBlue[100],
        appBar: _size.width < 700
            ? null
            : const PreferredSize(
                preferredSize: Size.fromHeight(85.0),
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
                  "Contact Us",
                  style: GoogleFonts.poppins(
                      fontSize: 26, fontWeight: FontWeight.w600),
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: "Name"),
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  validator: (name) {
                    if (name!.isEmpty) {
                      return "Enter valid name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "E-Mail",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: [AutofillHints.email],
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "Enter valid email";
                    } else {
                      return null;
                    }
                  },
                  controller: emailController,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: "Contact"),
                  controller: contactController,
                  validator: (contact) {
                    if (contact!.isEmpty) {
                      return "Enter valid contact";
                    }else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                TextFormField(
                    decoration: const InputDecoration(hintText: "Message"),
                    controller: messageController,
                    validator: (messgae) {
                      if (messgae!.isEmpty) {
                        return "This field cannot be empty";
                      } else {
                        return null;
                      }
                    }),
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
      child: ElevatedButton(
        onPressed: () {
      if(_formKey.currentState!.validate()){
        final db = FireBase(name: nameController.text, email: emailController.text, contact: int.parse(contactController.text), message: messageController.text);
        db.setUserDetials();
        clearTextField();
      }
        },
        style: ElevatedButton.styleFrom(
          elevation: 3,
          backgroundColor: Colors.lightBlue[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Get Started",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            const SizedBox(
              width: 8,
            ),
            const Icon(
              Icons.arrow_circle_right,
              color: Colors.white,
              size: 23,
            ),
          ],
        ),
      ),
    );
  }

  void clearTextField() {
    nameController.clear();
    emailController.clear();
    contactController.clear();
    messageController.clear();
  }
}
