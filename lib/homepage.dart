import 'package:find_travel_companion/chatpage.dart';
import 'package:find_travel_companion/editprofile.dart';
import 'package:find_travel_companion/main_chat_page.dart';
import 'package:find_travel_companion/searchresult.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? departureDate;
  DateTime? returnDate;

  @override
  void initState() {
    super.initState();
    // Set default values for departure and return dates
    departureDate = DateTime.now();
    returnDate = DateTime.now();
  }

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
            colors: [Color(0xFFE1BEE7), Colors.white, Color(0xFF90CAF9)],
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
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50.0),
              child: ListTile(
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
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                ),
                title: Text(
                  'Find Travel Companion',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black87,
                      fontFamily: 'Roboto'),
                ),
                trailing: Container(
                  child: IconButton(
                    onPressed: () {
                      // Navigate to the ChatPage
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainChatPage()));
                    },
                    icon: Image.asset(
                      'assets/icons/chat2.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/plane.png',
                    width: 280,
                    height: 300,
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  Image.asset(
                    'assets/images/car.jpeg',
                    width: 120,
                    height: 120,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  color: Color(0xFFA0B2D7),
                  width: 2.0,
                ),
              ),
              width: 350.0,
              height: 400.0,
              padding:
              EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Location",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xDF2C2B2B),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Color(0xFFE8EAF6),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: DropdownButton<String>(
                        icon: Icon(Icons.keyboard_arrow_down_rounded,
                            color: Colors.black),
                        iconSize: 32.0,
                        items: ['Location A', 'Location B', 'Location C']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          print('Selected Location: $value');
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Destination",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xDF2C2B2B),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Color(0xFFE8EAF6),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: DropdownButton<String>(
                        icon: Icon(Icons.keyboard_arrow_down_rounded,
                            color: Colors.black),
                        iconSize: 32.0,
                        items: [
                          'Destination A',
                          'Destination B',
                          'Destination C'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          print('Selected Destination: $value');
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Departure",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xDF2C2B2B),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      DateTime? selectedDate =
                                      await showCalendarDialog(
                                          context, departureDate);
                                      if (selectedDate != null) {
                                        setState(() {
                                          departureDate = selectedDate;
                                        });
                                      }
                                    },
                                    icon: Image.asset(
                                      "assets/icons/calender.png",
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD3E0),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Center(
                                  child: Text(
                                    departureDate != null
                                        ? "${departureDate!.year}/${departureDate!.month}/${departureDate!.day}"
                                        : "Select Departure Date",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Return",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xDF2C2B2B),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      DateTime? selectedDate =
                                      await showCalendarDialog(
                                          context, returnDate);
                                      if (selectedDate != null) {
                                        setState(() {
                                          returnDate = selectedDate;
                                        });
                                      }
                                    },
                                    icon: Image.asset(
                                      "assets/icons/calender.png",
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD3E0),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Center(
                                  child: Text(
                                    returnDate != null
                                        ? "${returnDate!.year}/${returnDate!.month}/${returnDate!.day}"
                                        : "Select Return Date",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: MaterialButton(
                      minWidth: 100,
                      height: 50,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchResult()));
                      },
                      color: Color(0xFF2197D5),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Search",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<DateTime?> showCalendarDialog(
      BuildContext context, DateTime? initialDate) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    return selectedDate;
  }
}





