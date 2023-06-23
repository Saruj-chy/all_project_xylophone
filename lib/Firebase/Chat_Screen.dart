import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

final _firestore = FirebaseFirestore.instance;


class Chat_Screen extends StatefulWidget {
  static String id = 'chat_screen';
  const Chat_Screen({Key? key}) : super(key: key);

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}
class _Chat_ScreenState extends State<Chat_Screen> {
  final _auth = FirebaseAuth.instance;
  final messageTextController = TextEditingController() ;
  late String loggedInUserEmail = "";

  late String message;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("------------------ user ") ;
    getCurrerntUser();
    getMessages();
  }

  void getCurrerntUser() async {
    print("------------------ user get of ") ;
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUserEmail = user.email!;
        print(user.email);
      }
    } catch (e) {
      print(e);
    }
  }

  void getMessages() async {
    final messages = await _firestore.collection("messages").get();
    // print(messages.docs) ;
    for (var message in messages.docs) {
      print(message.data());
    }
  }

  void getMessageStream() async {
    await for (var snapshot in _firestore.collection("messages").snapshots()) {
      for (var message in snapshot.docs) {
        print(message.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getCurrerntUser() ;
    });
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                // _auth.signOut() ;
                // Navigator.pop(context) ;

                getMessageStream();
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            StreamMessage(loggedUser: loggedInUserEmail,),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: messageTextController,
                      onChanged: (value) {
                        //Do something with the user input.
                        message = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      messageTextController.clear() ;
                      //Implement send functionality.
                      _firestore.collection("messages").add({
                        'text': message,
                        'sender': loggedInUserEmail,
                      });
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class StreamMessage extends StatefulWidget {
  StreamMessage({required this.loggedUser}) ;
  final String loggedUser ;
  @override
  State<StreamMessage> createState() => _StreamMessageState();
}

class _StreamMessageState extends State<StreamMessage> {
  late String loggedUser ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loggedUser = widget.loggedUser;
  }
  @override
  Widget build(BuildContext context) {
    return MessageStream(loggedUser: loggedUser);
  }
}


class MessageStream extends StatelessWidget {
  MessageStream({required this.loggedUser}) ;
  final String loggedUser ;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection("messages").snapshots(),
      builder: (context, snapshot) {
        List<MessageBubble> messageWidgets = [];
        if (!snapshot.hasData) {
          print("No data");
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          );
        }
        final messages = snapshot.data!.docs.reversed;

        for (var message in messages) {
          var data = message.data() as Map;
          final messageText = data['text'];
          final messageSender = data['sender'];

          final messageBubble = MessageBubble(
            text: messageText,
            sender: messageSender,
            isMe: messageSender == loggedUser,
          );
          messageWidgets.add(messageBubble);
        }

        return Expanded(child: ListView(
          reverse: true,
          padding:
          EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          children: messageWidgets,
        ),
        );


      },
    );
  }
}


class MessageBubble extends StatelessWidget {
  MessageBubble({required this.text, required this.sender, required this.isMe});
  final String sender;
  final String text;
  final bool isMe ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(

        crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start ,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget> [
          Text(sender, style: TextStyle(fontSize: 12.0, color: Colors.yellow),),
          Material(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0), 
                  bottomLeft: Radius.circular(30.0), 
              topRight: Radius.circular(30.0)),
              elevation: 5.0,
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  '$text',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              )),
        ],
      ),
    );
  }
}
