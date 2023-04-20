import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/colors.dart';
import 'package:upcareer/ui/widgets/MyElevatedButton.dart';

import '../../../../firebase/query.dart';

class MobAskQuery extends StatefulWidget {
  MobAskQuery({super.key});

  @override
  State<MobAskQuery> createState() => _MobAskQueryState();
}

class _MobAskQueryState extends State<MobAskQuery> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _contactController = TextEditingController();

  final TextEditingController _messageController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _messageController.dispose();
    _contactController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: skyBlue,
        appBar: AppBar(
          elevation: 3,
          backgroundColor: Colors.white,
          title: Text(
            "Back",
            style: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
              size: 18,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 80),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Text(
                            "Any Query ?",
                            style: GoogleFonts.poppins(
                                fontSize: 23, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(hintText: "Name"),
                            keyboardType: TextInputType.name,
                            controller: _nameController,
                            autofillHints: const [AutofillHints.name],
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
                            autofillHints: const [AutofillHints.email],
                            controller: _emailController,
                            validator: (email) {
                              if (email!.isEmpty) {
                                return "Enter valid email";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(hintText: "Contact"),
                            controller: _contactController,
                            autofillHints: const [
                              AutofillHints.telephoneNumber
                            ],
                            validator: (contact) {
                              if (contact!.isEmpty) {
                                return 'Please enter your contact number';
                              } else if (contact.length != 10) {
                                return 'Contact number should be of 10 digits';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(hintText: "Message"),
                            controller: _messageController,
                            validator: (messgae) {
                              if (messgae!.isEmpty) {
                                return "This field cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              _submitButton(context)
            ],
          ),
        ));
  }

  SizedBox _submitButton(BuildContext context) {
    return SizedBox(
      height: 40,
      child: CustomElevatedButton(
        label: "Submit",
        buttonBg: skyBlue,
        onPress: () {
          validateData();
        },
          icon: Icons.arrow_circle_right
      ),
    );
  }

  void clearTextField() {
    _nameController.clear();
    _emailController.clear();
    _contactController.clear();
    _messageController.clear();
  }

  void validateData() {
      if (_formKey.currentState!.validate()) {
        final db = StudentsQueries.getformDetails(
            name: _nameController.text,
            email: _emailController.text,
            contact: int.parse(_contactController.text),
            message: _messageController.text);
        db.setUserDetails();
        clearTextField();
      }
  }

}
