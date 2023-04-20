import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/chat%20gpt/ui/chat_messaged.dart';
import 'package:upcareer/constant/colors.dart';

class ChatUi extends StatefulWidget {
 
  @override
  State<ChatUi> createState() => _ChatUiState();
}

class _ChatUiState extends State<ChatUi> {
  TextEditingController questionController = TextEditingController();

  List<ChatMesseges> _listOfMessages = [];


  void _sendMesseges(){
    ChatMesseges messages = ChatMesseges(text: questionController.text, sender: 'user');
     setState(() {
      
    _listOfMessages.insert(0, messages);
     });
     questionController.clear();


  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all()),
      margin: const EdgeInsets.all(15),
      height: 500,
      child: Column(
        children: [
          Text(
            "Ask to Expert",
            style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          Flexible(
            child: ListView.builder(
              reverse: true,
              itemCount: _listOfMessages.length,
              itemBuilder: (
                BuildContext context, index) {
            return _listOfMessages[index];
          })),
          Row(
            children: [
               Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: questionController,
                    onSubmitted: (value) => _sendMesseges(),
                    decoration: const InputDecoration.collapsed(
                        hintText: "Question ?",
                        hintStyle: TextStyle(fontSize: 14)),
                    style: const TextStyle(color: Colors.black,fontSize: 12)
                  ),
                ),
              ),
              ButtonBar(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.send,
                      size: 14,
                    ),
                    onPressed: () {
                      _sendMesseges();
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
