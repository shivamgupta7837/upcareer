import 'package:flutter/material.dart';

class  ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget webBody;


  const ResponsiveLayout({super.key, required this.mobileBody, required this.webBody});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (BuildContext , BoxConstraints ) {
        if(BoxConstraints.maxWidth < 700){
          return mobileBody;
        }else{
          return webBody;
        }
      },

    );
  }
}
