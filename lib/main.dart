import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:upcareer/dummy.dart';
import 'package:upcareer/ui/screens/homepage.dart';
import 'package:upcareer/ui/screens/web/tabs/AboutUs.dart';
import 'package:upcareer/ui/screens/web/tabs/find_colleges.dart';
import 'package:upcareer/ui/screens/web/tabs/ask_query.dart';
import 'package:upcareer/ui/universities.dart';

import 'constant/choose_subjects.dart';




Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options:  const FirebaseOptions(
          apiKey: "AIzaSyCxCkA2KIdHPtT8FdM1kz-b7_-bOzDVgX4",
          projectId: "upcareer-3ac6b",
          messagingSenderId: "579423223506",
          appId: "1:579423223506:web:43ca05eed9f4a8901a770b"),
    );
  } on Exception catch (_) {
    await Firebase.initializeApp(
      name: "upcareer",
      options:  const FirebaseOptions(
          apiKey: "AIzaSyCxCkA2KIdHPtT8FdM1kz-b7_-bOzDVgX4",
          projectId: "upcareer-3ac6b",
          messagingSenderId: "579423223506",
          appId: "1:579423223506:web:43ca05eed9f4a8901a770b"),
    );
  }


  
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UpCareer',
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/about': (context)=> const AboutUs(),
      //   '/recommendations': (context)=> const WebFindColleges(),
      //   '/ask_query': (context)=> AskQuery(),
      // },
      home: Universities(),
    );
  }

}
