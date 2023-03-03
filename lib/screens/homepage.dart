import 'package:flutter/material.dart';
import 'package:upcareer/mobile_body/mobile_home.dart';
import 'package:upcareer/responsive/responsive.dart';
import 'package:upcareer/web/web_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
      mobileBody: MobileBody(),
      webBody: WebBody(),
    );
  }
}
