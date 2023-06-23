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
import 'package:firebase_core/firebase_core.dart';

//https://console.firebase.google.com/u/1/project/burj-al-arab-246ca/firestore/data/~2Fmessages~2FOzhUzarDkt9dQz7hWOzH
// nishandurjoy123@gmail.com firebase project - burj-al-arab

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(
      RunApp()
  );
}
class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: FlashChat(),
    );
  }
}


class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54)
        ),
      ),
      initialRoute:main_all_screen.id ,
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






