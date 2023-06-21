import 'package:all_project_xylone/Firebase/Chat_Screen.dart';
import 'package:all_project_xylone/Firebase/Login_Screen.dart';
import 'package:all_project_xylone/Firebase/Registration_Screen.dart';
import 'package:all_project_xylone/Firebase/Welcome_Screen.dart';
import 'package:all_project_xylone/destini/destini.dart';
import 'package:all_project_xylone/dice.dart';
import 'package:all_project_xylone/main_all_screen.dart';
import 'package:all_project_xylone/mi_card.dart';
import 'package:all_project_xylone/quizzler.dart';
import 'package:all_project_xylone/rich_app.dart';
import 'package:all_project_xylone/xylophone.dart';
import 'package:flutter/material.dart';


void main() {
  return runApp(
      FlashChat()
  );
}

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54)
        ),
      ),
      initialRoute:Welcome_Screen.id ,
      routes: {
        Welcome_Screen.id: (context) => Welcome_Screen(),
        Login_Screen.id: (context) => Login_Screen(),
        Registration_Screen.id: (context) => Registration_Screen(),
        Chat_Screen.id : (context) => Chat_Screen(),
        //Others screen who i practice is here
        main_all_screen.id : (context) => main_all_screen(),
        Mi_Card.id : (context) => Mi_Card(),
        Dice_Screen.id : (context) => Dice_Screen(),
        Quizzler_Screen.id : (context) => Quizzler_Screen(),
        Rich_Screen.id : (context) => Rich_Screen(),
        Xylophone_Screen.id : (context) => Xylophone_Screen(),
        Destini.id : (context) => Destini(),
      },
    );
  }
}






