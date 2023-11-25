import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChatPage(),
  ));
}

class ChatPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Text("Chat Page",
                    style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),

                ),
              ],
            )
          ),
      );
  }
}