import 'package:flutter/material.dart';

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
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(child: Text("Search result"),),
            ],
          )
      ),
    );

  }
}