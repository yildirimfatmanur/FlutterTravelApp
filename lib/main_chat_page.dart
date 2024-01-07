import 'package:find_travel_companion/chatpage.dart';
import 'package:find_travel_companion/searchresult.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainChatPage(),
  ));
}

class MainChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B202D),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: IconButton(
                onPressed: () {
                  // Navigate to the ChatPage
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchResult()));
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Messages',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: ('Quicksand'),
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 36,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 670,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xff292F3F),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatPage()));
                    },
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 26.0, top: 35, right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset('assets/images/boy.jpg').image,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Mehmet Koç',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: ('Quicksand'),
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Text(
                                    '08:43',
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'hello',
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
