import 'package:flutter/material.dart';
import 'package:upcareer/widgets/app_bar.dart';

class QuickLinks extends StatelessWidget {
  const QuickLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar:_size.width < 700? null: const   PreferredSize(
        preferredSize:  Size.fromHeight(85.0),
        child: MyAppBar(),
      ),
      body: const Center(
        child: Text("News"),
      ),
    );
  }
}
