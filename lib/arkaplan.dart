import 'package:flutter/material.dart';

class ArkaPlan extends StatelessWidget{
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

        child: Text("ARKA PLAN")
      ),
    );

  }
}