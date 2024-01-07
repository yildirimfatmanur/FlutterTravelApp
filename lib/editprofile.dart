import 'package:find_travel_companion/login.dart';
import 'package:find_travel_companion/searchresult.dart';
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
                          child: IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios, size: 30, color: Colors.black,),),),
                        SizedBox(width: 8), // Boşluk ekledik
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/profile.jpg"),
                        ),
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

              padding: EdgeInsets.only(top: 50.0,left: 20, right: 20),
              child: Column(

                children: <Widget>[
                  inputFile(label: "Name",default_val: "Ayse Unal"),
                  inputFile(label: "Email",default_val: "ayseunal@gmail.com"),
                  inputFile(label: "Password", obscureText: true,default_val: "*****"),
                  inputFile(label: "Hobbies", default_val: "Camping"),
                  inputFile(label: "Date of Birth", default_val: "22/10/2000"),
                  inputFile(label: "Country/Region", default_val: "Turkey"),
                  inputFile(label: "Job",default_val: "Doctor" ),
                  SizedBox(height: 20,),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: () {
                      //save operations
                    },
                    color: Color(0xFF250764),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
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


Widget inputFile({label, obscureText = false,default_val}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: default_val,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF9CA6FF)),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF9CA6FF)),
              borderRadius: BorderRadius.circular(10),

            )
        ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
