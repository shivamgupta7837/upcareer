import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upcareer/constant/colors.dart';
import 'package:upcareer/model/api_service.dart';

class ChatUi extends StatefulWidget {
 
  @override
  State<ChatUi> createState() => _ChatUiState();
}

class _ChatUiState extends State<ChatUi> {
  TextEditingController questionController = TextEditingController();
  final ai = ApiService();
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
              itemCount: 5,
              itemBuilder: (
                BuildContext context, index) {
            return ListTile(
              // leading: CircleAvatar(
              //   radius: 10,
              //     backgroundColor: skyBlue,child: const Text("U",style: TextStyle(fontSize: 10),)),
              // title: Text(),

            );
          })),
          Row(
            children: [
               Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: questionController,
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
                    onPressed: () async{
                      try{
                      await ai.getModels();
                      }catch(e){
                        print("Error from pressing button is : $e");
                      }

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
