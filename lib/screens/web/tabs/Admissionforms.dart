import 'package:flutter/material.dart';
import 'package:upcareer/constant/app_bar.dart';

class QuickLinks extends StatelessWidget {
  const QuickLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar:_size.width < 700? null: const   PreferredSize(
        preferredSize:  Size.fromHeight(56.0),
        child: MyAppBar(),
      ),
      body: const Center(
        child: Text("News"),
      ),
    );
  }
}
