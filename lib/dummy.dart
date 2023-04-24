
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'chat gpt/ui/ai_chat.dart';
import 'constant/colors.dart';
import 'firebase/getDocuments.dart';


class Dummy extends StatelessWidget {
  final gd = GetDocuments();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  ChatUi(),
    );
  }

}
