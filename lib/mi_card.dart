import 'package:flutter/material.dart';

class Mi_Card extends StatelessWidget {
  static String id = "/mi_card";
  const Mi_Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/i_am_rich_app_icon.png"),
              ),
              Text(
                "Sd Saruj",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15,
                    color: Colors.teal.shade50,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '01516174973',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'saruj123456@gmail.com',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '01516174973',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.teal.shade900,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'saruj123456@gmail.com',
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0),
                      ),
                    ],
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

