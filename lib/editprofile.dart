import 'package:find_travel_companion/login.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
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
              padding: EdgeInsets.only(top: 60.0),
              child: ListTile(

                leading: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                  Align(
                  alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                      SizedBox(width: 8), // Boşluk ekledik
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/profile.jpg"),
                      ),
                      // Diğer widget'ları buraya ekleyebilirsiniz.
                    ],
                  ),
                ),

                title: Text(
                  'Edit Profile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black87,
                      fontFamily: 'Roboto'),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  icon: Icon(Icons.logout,color: Colors.black,),
                ),
              )
            ),
            Container(
              padding: EdgeInsets.only(top: 50.0),
              child: Text("Body Kısmı"),
            ),
          ],
        ),
      ),
    );
  }
}
