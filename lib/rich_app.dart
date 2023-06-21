import 'package:flutter/material.dart';

class Rich_Screen extends StatelessWidget {
  static String id = "/rich";

  const Rich_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Rich App"), backgroundColor: Colors.black54,),
        backgroundColor: Colors.blue,
        body: Center(
          child: Image(
            image: AssetImage("images/i_am_rich_app_icon.png"),
          ),
        ),
      ),
    );
  }
}