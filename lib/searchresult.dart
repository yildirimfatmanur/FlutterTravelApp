import 'package:find_travel_companion/editprofile.dart';
import 'package:find_travel_companion/homepage.dart';
import 'package:flutter/material.dart';

import 'chatpage.dart';

class SearchResult extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFE1BEE7),Colors.white,Color(0xFF90CAF9)],
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(6, 15, 20, 0.25),
                offset: Offset(20, 20),
                blurRadius: 50,
              ),
            ],
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.only(top: 30),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage()));
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Image.asset(
                'assets/icons/dash.png',
                color: Colors.black,
                width: 180,
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Eskisehir",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF1E406F)
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Ankara",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                            color: Color(0xFF1E406F)
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 168,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        '2024/01/01',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF1E406F),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 168,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        '2024/01/03',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF1E406F),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          SizedBox(height: 40,),
              Container(
                width: 353,
                height: 44,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF81C6ED),
                      Color(0xFF346AD2),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    'RESULTS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              ListTile(
                leading: InkWell(
                  onTap: () {
                    // Navigate to the EditProfile page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfile()));
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/boy.jpg"),
                  ),
                ),
                title: Text(
                  '2024/01/02 - 2024/01/06',
                  textAlign: TextAlign.center,
                ),
                trailing: Container(
                  child: IconButton(
                    onPressed: () {
                      // Navigate to the ChatPage
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatPage()));
                    },
                    icon: Image.asset(
                      'assets/icons/send_message.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
              ListTile(),
            ],
          )
      ),
    );

  }
}