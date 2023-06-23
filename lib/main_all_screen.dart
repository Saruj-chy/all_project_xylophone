import 'package:all_project_xylone/Firebase/Login_Screen.dart';
import 'package:all_project_xylone/Firebase/Welcome_Screen.dart';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: null,
          // actions: [
          //   IconButton(
          //       onPressed: (){
          //
          //       },
          //       icon: Icon(Icons.close))
          // ],
          title: Text("Main Screen"),
          backgroundColor: Colors.black12,
        ),
        backgroundColor: Colors.green.withOpacity(0.4),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      minimumSize: Size(400, 50),
                      elevation: 12.0,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, Welcome_Screen.id);
                  },
                  child: Text('Flash Chat Screen'),
                ),
                Divider(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      minimumSize: Size(400, 50),
                      elevation: 12.0,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, Mi_Card.id);
                  },

                  child: Text('Mi Card'),
                ),
                Divider(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      minimumSize: Size(400, 50),
                      elevation: 12.0,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, Dice_Screen.id);
                  },

                  child: Text('Dice'),
                ),
                Divider(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      minimumSize: Size(400, 50),
                      elevation: 12.0,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, Quizzler_Screen.id);
                  },
                  child: Text('Quizzler'),
                ),
                Divider(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      minimumSize: Size(400, 50),
                      elevation: 12.0,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, Rich_Screen.id);
                  },
                  child: Text('Image Show'),
                ),
                Divider(),


                ElevatedButton(
                  // color: Colors.green,
                  onPressed: () {
                    Navigator.pushNamed(context, Xylophone_Screen.id);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      minimumSize: Size(400, 50),
                      elevation: 12.0,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(color: Colors.white)),
                  // minWidth: 200.0,
                  // height: 42.0,
                  child: Text('Xylophone Sound'),
                ),
                Divider(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Destini.id);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      minimumSize: Size(400, 50),
                      elevation: 12.0,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(color: Colors.white)),
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
