import 'package:all_project_xylone/Firebase/Chat_Screen.dart';
import 'package:all_project_xylone/Firebase/Login_Screen.dart';
import 'package:all_project_xylone/Firebase/Registration_Screen.dart';
import 'package:flutter/material.dart';

class Welcome_Screen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> with SingleTickerProviderStateMixin {
  late AnimationController controller ;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: Duration(seconds: 10),
        vsync: this,
    );

    controller.forward();
    controller.addListener(() {
      setState(() {
        print(controller.value) ;

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.withOpacity(controller.value),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Hero(
                    tag: 'hero',
                    child: Container(
                      child: Image.asset('images/logo.png'),
                      height: 60.0,
                    ),
                  ),
                  Text(
                    'Flash Chat',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Login_Screen.id) ;
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Log In',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, Chat_Screen.id) ;
                      Navigator.pushNamed(context, Registration_Screen.id) ;
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Register',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
