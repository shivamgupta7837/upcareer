import 'package:flutter/material.dart';
import 'package:upcareer/constant/colors.dart';
class ChatMesseges extends StatelessWidget {

  final String text;
  final String sender;
  const ChatMesseges({super.key, required this.text, required this.sender});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.all(5  ),
              color: Colors.white,
              height: 20,
              child: Row(
                children: [
                   CircleAvatar(backgroundColor: skyBlue,child: const Text("U",style: TextStyle(fontSize: 10),)),
                  Text(text),
                ],
              )
            );
  }
}