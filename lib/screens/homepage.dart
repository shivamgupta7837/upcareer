import 'package:flutter/material.dart';
import 'package:upcareer/screens/mobile_body/mobile_home.dart';
import 'package:upcareer/responsive/responsive.dart';
import 'package:upcareer/screens/web/web_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
      mobileBody: MobileBody(),
      webBody: WebBody(),
    );
  }
}
