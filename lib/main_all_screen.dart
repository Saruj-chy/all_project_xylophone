import 'package:all_project_xylone/Firebase/Login_Screen.dart';
import 'package:all_project_xylone/destini/destini.dart';
import 'package:all_project_xylone/dice.dart';
import 'package:all_project_xylone/mi_card.dart';
import 'package:all_project_xylone/quizzler.dart';
import 'package:all_project_xylone/rich_app.dart';
import 'package:all_project_xylone/xylophone.dart';
import 'package:flutter/material.dart';
class main_all_screen extends StatelessWidget {
  static String id = '/main_all_screen';
  const main_all_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.green,
                  onPressed: (){
                    Navigator.pushNamed(context, Mi_Card.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Mi Card'),
                ),
                MaterialButton(
                  color: Colors.green,
                  onPressed: (){
                    Navigator.pushNamed(context, Dice_Screen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Dice'),
                ),
                MaterialButton(
                  color: Colors.green,
                  onPressed: (){
                    Navigator.pushNamed(context, Quizzler_Screen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Quizzler'),
                ),
                MaterialButton(
                  color: Colors.green,
                  onPressed: (){
                    Navigator.pushNamed(context, Rich_Screen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Rich App'),
                ),
                MaterialButton(
                  color: Colors.green,
                  onPressed: (){
                    Navigator.pushNamed(context, Xylophone_Screen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Xylophone Sound'),
                ),
                MaterialButton(
                  color: Colors.green,
                  onPressed: (){
                    Navigator.pushNamed(context, Destini.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Destini'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
