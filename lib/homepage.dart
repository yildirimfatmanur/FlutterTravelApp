import 'package:find_travel_companion/arkaplan.dart';
import 'package:find_travel_companion/chatpage.dart';
import 'package:find_travel_companion/editprofile.dart';
import 'package:find_travel_companion/searchresult.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatelessWidget {
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  EditProfile())); // Bir önceki sayfaya geri dön
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatPage()));
                      },
                      icon: Image.asset(
                        'assets/icons/chat2.png', // İkonunuzun dosya yolu
                        width: 100, // İkonun genişliği
                        height: 100, // İkonun yüksekliği
                      ),
                    ),
                  ),
                )),
            Container(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/plane.png',
                    width: 280,
                    height: 300,
                  ), // İlk resim
                  SizedBox(
                      width:
                          0), // İki resim arasında boşluk bırakmak için SizedBox kullanabilirsiniz
                  Image.asset(
                    'assets/images/car.jpeg',
                    width: 120,
                    height: 120,
                  ), // İkinci resim
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  color: Color(0xFFA0B2D7), // Set the border color to black
                  width: 2.0, // Set the border width
                ),
              ),
              width: 350.0, // Set the width of the container
              height: 400.0, // Set the height of the container
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
                              color: Colors.black), // Custom icon
                          iconSize: 32.0, // Adjust icon size as needed
                          //hint: Text("Select Location"),
                          items: ['Location A', 'Location B', 'Location C']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            // Handle location selection
                            print('Selected Location: $value');
                          },
                        ),
                      )),
                  SizedBox(height: 20), // Add some space between dropdowns
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
                              color: Colors.black), // Custom icon
                          iconSize: 32.0, // Adjust icon size as needed

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
                            // Handle location selection
                            print('Selected Destination: $value');
                          },
                        ),
                      )),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Deparature",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xDF2C2B2B),
                                      )),
                                  SizedBox(width: 10,),
                                  IconButton(
                                    onPressed: () {
                                      // Show the calendar screen
                                      showCalendarDialog(context);
                                    },
                                      icon: Image.asset("assets/icons/calender.png",
                                        width: 100,height: 100,),)
                                  //TableCalendar(focusedDay: DateTime.now(), firstDay: DateTime.now(), lastDay: DateTime.utc(2030,12,30))
                                ],
                              ),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD3E0),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Container(
                                    margin: EdgeInsets.only(left: 20,right: 10,top: 10,bottom: 10),
                                    child: Text("2023/11/25"),
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
                                  Text("Return",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xDF2C2B2B),
                                  )),
                                  SizedBox(width: 10,),
                                  IconButton(
                                    onPressed: () {
                                      // Show the calendar screen
                                      showCalendarDialog(context);
                                    },
                                    icon: Image.asset("assets/icons/calender.png",
                                      width: 100,height: 100,),)
                                ],
                              ),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD3E0),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Container(
                                  margin: EdgeInsets.only(left: 20,right: 10,top: 10,bottom: 10),
                                  child: Text("2023/11/25"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(

                    child: MaterialButton(
                      minWidth: 100,
                      height: 50,

                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SearchResult()));
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


  void showCalendarDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Date'),
          content:Text("Calender"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
