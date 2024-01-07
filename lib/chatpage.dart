import 'package:find_travel_companion/main_chat_page.dart';
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
      backgroundColor: Color(0xff1B202D),
      body: Padding(
        padding: EdgeInsets.only(left: 14.0,right: 14),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Navigate to the ChatPage
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainChatPage()));
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: Image.asset('assets/images/boy.jpg').image,
                  ),
                  const SizedBox(width: 15,),
                  const Text('Mehmet Koç',style: TextStyle(
                      fontSize: 18,
                      fontFamily: ('Quicksand'),
                      color: Colors.white
                  ),),
                  Spacer(),
                  const Icon(Icons.search_rounded,
                    color: Colors.white70,
                    size: 40,
                  )
                ],
              ),
              SizedBox(height: 30,),
              const Center(
                child: Text('Today',style: TextStyle(
                    color: Colors.white70
                ),),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 300.0),
                child: Container(
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff7A8194)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Hello',style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),

              SizedBox(height: 10,),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff3D4354)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height:40,
                          width: 40,

                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Icon(Icons.camera_alt_outlined),
                        ),
                      ),
                      SizedBox(width: 15,),
                      const Text('Message',style: TextStyle(
                          color: Colors.white54
                      ),),
                      Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.send,color:  Colors.white54,),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}